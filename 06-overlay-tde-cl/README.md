---
id: OVERLAY-TDE-000
version: 1.0.0
status: active
date: 2024-05-01
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - GOV-MATRIX-001
---
# ASTA‑SIGMA | Overlay TDE‑Chile — Factory Seed (Momento 0)

Este paquete deja **por defecto** (de fábrica) todo lo necesario para activar el marco ASTA‑SIGMA bajo la normativa chilena: **LTDE 21.180**, rectoría SGD 21.658, anticipos de **Ley 21.719** (datos personales) y el proyecto de **Ley de IA**.

## Estructura

- `ci/` — Validadores (`validate_contracts.sh`) actualizados al naming en inglés.
- `guias_operativas/` — Guías específicas TDE‑CL.
- `policies/` — Políticas computables por riesgo país.
- `referencias/` — Modelos y material contextual.
- `schemas/` — Esquemas JSON oficiales para contratos TDE.
- `templates/` — Plantillas *_tde.yaml con campos en inglés + `x_overlay.tde_cl`.

## Cómo usar el overlay

1. Clona o referencia este directorio como submódulo en tu repo institucional.
2. Completa organización y fichas en [`07-org`](../07-org/) y [`08-inventory`](../08-inventory/).
3. Adapta contratos base usando los templates del overlay y agrega campos país bajo `x_overlay.tde_cl`.
4. Ejecuta `bash 06-overlay-tde-cl/ci/validate_contracts.sh` en CI/CD para reforzar cumplimiento.
5. Sincroniza políticas (`policies/`) con tus pipelines (`opa`, `conftest`, validaciones custom).

> Plantillas y guías listas: expediente electrónico, interoperabilidad (PISEE), notificaciones electrónicas, incidentes IA, brechas de datos y lineamientos de Ley 21.719.
