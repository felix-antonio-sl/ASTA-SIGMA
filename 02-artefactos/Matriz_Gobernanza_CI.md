---
id: GOV-MATRIX-001
version: 1.0.0
status: active
date: 2024-05-01
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - GM-002
  - GO-002
  - GO-003
---
# Matriz de Gobernanza CI (Artefacto ↔ Gate ↔ Tier)

Esta matriz es la fuente de verdad para aplicar gobernanza como código. Cada fila indica qué gates de CI/CD son obligatorios según el tier de riesgo declarado en la `Ficha de ST`.

| Artefacto | Gates obligatorios | Tier R1 | Tier R2 | Tier R3 |
| --- | --- | --- | --- | --- |
| **Data Contract** | JSON Schema (`schema_contrato_datos_tde.json`), pruebas de calidad de datos | ✅ | ✅ | ✅ |
| **Process Contract** | Validación de schema + checklist de controles humanos | ➖ | ✅ | ✅ |
| **Service Contract (API)** | Lint OpenAPI, pruebas de contrato (`npm run test:contract`), monitoreo sintético | ✅ | ✅ | ✅ |
| **Agent Contract (IA)** | Validación de schema, suite GO-002 (fidelidad/citas), pruebas de abuso LLM | ➖ | ✅ | ✅ |
| **UX/Accesibilidad** | Gate Axe/Pa11y con severidad crítica bloqueante | ✅ | ✅ | ✅ |
| **SLO/SLI** | Validación de objetivos vs. política [`05-policies/POL-SLO-RIESGO.yaml`](../05-policies/POL-SLO-RIESGO.yaml) | ✅ | ✅ | ✅ |
| **Políticas computables** | Linters de políticas (`opa test`, `conftest`) | ➖ | ✅ | ✅ |
| **Chaos/DR** | Ejecución de juego GO-004 + `ADR-core-106` | ➖ | ➖ | ✅ |

Leyenda: ✅ obligatorio, ➖ opcional (recomendado según criticidad local).

## Implementación práctica

1. Declare el `risk_tier` en la ficha de ST.
2. Configure el pipeline para invocar `bash 06-overlay-tde-cl/ci/validate_contracts.sh` y pruebas adicionales según la fila.
3. Registre la evidencia Δ (logs, reportes de pruebas, enlaces a dashboards) en el PR y en la bitácora del ST.
4. Revise esta matriz trimestralmente en la ceremonia RVC para ajustar gates y herramientas.
