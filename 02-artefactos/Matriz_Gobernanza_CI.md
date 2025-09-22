---
id: GOV-MATRIX-001
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - ../contratos/templates/TPL-SVC-001_Service_Contract.yaml
  - ../contratos/schemas/service_contract.schema.json
  - ../../06-overlay-tde-cl/ci/validate_contracts.sh
---
# Matriz de Gobernanza Computable (Artefacto ↔ Gate ↔ Tier)

| Artefacto | Gates obligatorios en CI | Tier R1 | Tier R2 | Tier R3 |
| --------- | ------------------------ | ------: | ------: | ------: |
| Data Contract | Validación schema JSON (`schema_contrato_datos_tde.json`), verificaciones de calidad | ✓ | ✓ | ✓ |
| Process Contract | Validación schema JSON, revisión de HITL declarada, simulación de interoperabilidad | – | ✓ | ✓ |
| Service Contract (API) | Lint OpenAPI + pruebas de contrato (`dredd`/`prism`) | ✓ | ✓ | ✓ |
| Agent Contract (IA) | Validación schema + pipeline de calidad `GO-002` (fidelidad/citas) | – | ✓ | ✓ |
| UX / Accesibilidad | Gate WCAG automatizado (Axe/Pa11y) | ✓ | ✓ | ✓ |
| Supply Contract | Validación de cláusulas BCP/DRP y rate-limit computable | ✓ | ✓ | ✓ |

- `✓` indica bloqueo obligatorio del pipeline.
- `–` indica monitoreo o revisión manual recomendada pero no bloqueante.
- Los resultados deben anexarse como evidencias Δ por PR (ver `01-manual/MANUAL_ASTA-SIGMA.md`).
