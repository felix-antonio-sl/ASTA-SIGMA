#!/usr/bin/env bash
set -euo pipefail

# ASTA-SIGMA overlay validation without external pip dependencies.
echo "[ASTA‑SIGMA | TDE‑CL] Validando contratos..."

fail=0
files=$(git ls-files -- '08-inventory/**/*.yaml' '06-overlay-tde-cl/templates/contrato_*_tde.yaml' || true)

if [ -z "$files" ]; then
  echo "[WARN] No se encontraron contratos a validar."
  exit 0
fi

for f in $files; do
  python3 - "$f" <<'PY' || fail=1
import datetime
import json
import os
import subprocess
import sys
from typing import Any, Dict, Iterable, List

fname = sys.argv[1]

RUBY_CMD = os.environ.get("ASTA_SIGMA_RUBY", "ruby")

RUBY_SCRIPT = (
    "begin;"
    " content = File.read(ARGV[0]);"
    " data = YAML.safe_load(content, permitted_classes: [], permitted_symbols: [], aliases: true) || {};"
    " STDOUT.write(JSON.generate(data));"
    "rescue StandardError => e;"
    " STDERR.puts('[YAML] ' + e.message);"
    " exit 1;"
    "end;"
)

def load_yaml(path: str) -> Dict[str, Any]:
    proc = subprocess.run(
        [RUBY_CMD, "-ryaml", "-rjson", "-e", RUBY_SCRIPT, path],
        capture_output=True,
        text=True,
        check=False,
    )
    if proc.returncode != 0:
        sys.stderr.write(proc.stderr or f"[ERROR] Ruby YAML loader falló para {path}\n")
        raise SystemExit(proc.returncode)
    payload = proc.stdout.strip()
    if not payload:
        return {}
    try:
        return json.loads(payload)
    except json.JSONDecodeError as exc:
        sys.stderr.write(f"[ERROR] No se pudo decodificar YAML como JSON en {path}: {exc}\n")
        raise SystemExit(2)


def type_name(value: Any) -> str:
    if isinstance(value, bool):
        return "boolean"
    if isinstance(value, int):
        return "integer"
    if isinstance(value, float):
        return "number"
    if isinstance(value, dict):
        return "object"
    if isinstance(value, list):
        return "array"
    if isinstance(value, str):
        return "string"
    if value is None:
        return "null"
    return type(value).__name__


def matches_type(value: Any, expected: str) -> bool:
    if expected == "object":
        return isinstance(value, dict)
    if expected == "array":
        return isinstance(value, list)
    if expected == "string":
        return isinstance(value, str)
    if expected == "boolean":
        return isinstance(value, bool)
    if expected == "integer":
        return isinstance(value, int) and not isinstance(value, bool)
    if expected == "number":
        return (isinstance(value, (int, float)) and not isinstance(value, bool))
    if expected == "null":
        return value is None
    # For unsupported keywords, assume match to avoid false negatives.
    return True


def validate(instance: Any, schema: Dict[str, Any], path: str = "$") -> List[str]:
    errors: List[str] = []

    schema_type = schema.get("type")
    if schema_type is not None:
        if isinstance(schema_type, list):
            allowed = schema_type
        else:
            allowed = [schema_type]
        if not any(matches_type(instance, t) for t in allowed):
            errors.append(f"{path}: se esperaba tipo {allowed}, se recibió {type_name(instance)}")
            return errors

    if "const" in schema and instance != schema["const"]:
        errors.append(f"{path}: se esperaba el valor constante {schema['const']!r}, se recibió {instance!r}")

    if "enum" in schema and instance not in schema["enum"]:
        errors.append(f"{path}: el valor {instance!r} no pertenece al conjunto permitido {schema['enum']!r}")

    fmt = schema.get("format")
    if fmt == "date" and isinstance(instance, str):
        try:
            datetime.date.fromisoformat(instance)
        except ValueError:
            errors.append(f"{path}: el valor {instance!r} no es una fecha ISO válida")

    if isinstance(instance, dict):
        required = schema.get("required", [])
        for key in required:
            if key not in instance:
                errors.append(f"{path}: falta la clave obligatoria '{key}'")
        properties = schema.get("properties", {})
        additional = schema.get("additionalProperties", True)
        for key, value in instance.items():
            if key in properties:
                errors.extend(validate(value, properties[key], f"{path}.{key}"))
            else:
                if isinstance(additional, dict):
                    errors.extend(validate(value, additional, f"{path}.{key}"))
                elif additional is False:
                    errors.append(f"{path}: la clave adicional '{key}' no está permitida")

    if isinstance(instance, list):
        min_items = schema.get("minItems")
        if isinstance(min_items, int) and len(instance) < min_items:
            errors.append(f"{path}: debe contener al menos {min_items} elementos")
        items_schema = schema.get("items")
        if isinstance(items_schema, dict):
            for idx, item in enumerate(instance):
                errors.extend(validate(item, items_schema, f"{path}[{idx}]"))

    return errors


data = load_yaml(fname)
if not isinstance(data, dict):
    sys.exit(0)

contract = data.get("contract")
if not isinstance(contract, dict):
    sys.exit(0)

kind = contract.get("kind")
if kind not in {"data_contract", "agent_contract", "process_contract"}:
    sys.exit(0)

SCHEMA_BASE = "06-overlay-tde-cl/schemas"
SCHEMA_MAP = {
    "data_contract": "schema_contrato_datos_tde.json",
    "agent_contract": "schema_contrato_agente_ia_tde.json",
    "process_contract": "schema_contrato_proceso_tde.json",
}

schema_path = os.path.join(SCHEMA_BASE, SCHEMA_MAP[kind])
try:
    with open(schema_path, encoding="utf-8") as fh:
        schema = json.load(fh)
except FileNotFoundError:
    print(f"[ERROR] No se encontró el schema para {kind}: {schema_path}")
    raise SystemExit(2)

errors = validate(data, schema)
if errors:
    for error in errors:
        print(f"[ERROR] {fname}: {error}")
    raise SystemExit(2)


def ensure(path_keys: Iterable[str]):
    node: Any = data
    for key in path_keys:
        if isinstance(node, dict) and key in node:
            node = node[key]
        else:
            print(f"[ERROR] Falta campo obligatorio {'/'.join(path_keys)} en {fname}")
            raise SystemExit(3)


CRITICAL = {
    "data_contract": [
        ("contract", "legal", "legal_basis"),
        ("contract", "legal", "eipd_id"),
        ("contract", "overlays", "tde_cl", "dp_21719", "privacy_by_design"),
    ],
    "agent_contract": [
        ("contract", "risk", "level"),
        ("contract", "overlays", "tde_cl", "dp_21719", "eipd_id"),
        ("contract", "overlays", "tde_cl", "authentication"),
    ],
    "process_contract": [
        ("contract", "overlays", "tde_cl", "interoperability", "platform"),
        ("contract", "service_levels", "availability_pct"),
        ("contract", "human_in_the_loop", "rules"),
    ],
}

for keys in CRITICAL.get(kind, []):
    ensure(keys)

print(f"[OK] {fname} válido ✅")
PY

done

exit $fail
