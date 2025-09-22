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

BASE = os.path.join("06-overlay-tde-cl", "schemas")
SCHEMAS = {
    "data_contract": "schema_contrato_datos_tde.json",
    "agent_contract": "schema_contrato_agente_ia_tde.json",
    "process_contract": "schema_contrato_proceso_tde.json",
}

kind = data.get("kind")
if kind not in SCHEMAS:
    print(f"[ERROR] kind inválido o faltante en {fname}: {kind}")
    sys.exit(2)

schema_path = os.path.join(BASE, SCHEMAS[kind])
Draft202012Validator(json.load(open(schema_path, encoding="utf-8"))).validate(data)

# Ensure critical fields exist after refactor to english keys
def ensure(path):
    node = data
    for key in path:
        if not isinstance(node, dict) or key not in node:
            print(f"[ERROR] Falta campo obligatorio {'.'.join(path)} en {fname}")
            sys.exit(3)
        node = node[key]

critical = {
    "data_contract": [
        ("legal", "lawful_basis"),
        ("legal", "dpia_id"),
        ("interfaces", "interoperability"),
        ("incidents", "breach_playbook"),
    ],
    "agent_contract": [
        ("legal", "lawful_purpose"),
        ("x_overlay", "tde_cl", "authentication_method"),
        ("x_overlay", "tde_cl", "dpia_id"),
    ],
    "process_contract": [
        ("x_overlay", "tde_cl", "electronic_dossier"),
        ("x_overlay", "tde_cl", "interoperability_network"),
        ("x_overlay", "tde_cl", "notification_channel"),
    ],
}.get(kind, [])

for path in critical:
    ensure(path)

print(f"[OK] {fname} válido ✅")
PY
done

exit $fail
