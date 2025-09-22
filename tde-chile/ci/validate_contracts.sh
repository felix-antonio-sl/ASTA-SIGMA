#!/usr/bin/env bash
set -euo pipefail

# Requires: python3, pip install pyyaml jsonschema
echo "[ASTA‑SIGMA | TDE‑CL] Validando contratos..."

fail=0
files=$(git ls-files | grep -E 'contrato_(datos|agente_ia|proceso)_tde\.ya?ml' || true)

if [ -z "$files" ]; then
  echo "[WARN] No se encontraron contratos *_tde.yaml en el repo."
  exit 0
fi

for f in $files; do
  python3 - "$f" <<'PY' || fail=1
import sys, json, yaml, os
from jsonschema import Draft202012Validator

fname = sys.argv[1]
data = yaml.safe_load(open(fname, encoding="utf-8"))

def load_schema(kind):
    base = "tde-chile/schemas"
    m = {
        "data_contract": "schema_contrato_datos_tde.json",
        "agent_contract": "schema_contrato_agente_ia_tde.json",
        "process_contract": "schema_contrato_proceso_tde.json",
    }
    return json.load(open(os.path.join(base, m[kind]), encoding="utf-8"))

kind = data.get("kind")
if kind not in {"data_contract","agent_contract","process_contract"}:
    print(f"[ERROR] kind inválido o faltante en {fname}: {kind}")
    sys.exit(2)

schema = load_schema(kind)
Draft202012Validator(schema).validate(data)

# Extra: campos críticos
def ensure(path):
    node = data
    for k in path:
        if not isinstance(node, dict) or k not in node:
            print(f"[ERROR] Falta campo obligatorio {'.'.join(path)} en {fname}")
            sys.exit(3)
        node = node[k]

critical = {
    "data_contract": [
        ("datos_personales","base_legal"),
        ("datos_personales","eipd_id"),
        ("brechas","procedimiento"),
    ],
    "agent_contract": [
        ("ia_riesgo","nivel"),
        ("dp_21719","eipd_id"),
        ("tde","autenticacion"),
    ],
    "process_contract": [
        ("tde","expediente_electronico"),
        ("tde","interoperabilidad"),
        ("tde","notificacion"),
    ],
}.get(kind, [])

for p in critical:
    ensure(p)

print(f"[OK] {fname} válido ✅")
PY
done

exit $fail
