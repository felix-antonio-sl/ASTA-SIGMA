---
id: OVERLAY-TDE-000
version: 1.1.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - 01-manual/MANUAL_ASTA-SIGMA.md
  - 06-overlay-tde-cl/ci/validate_contracts.sh
---
# ASTA‑SIGMA | Overlay TDE‑Chile — Factory Seed (Momento 0)

Este libro concentra la extensión TDE‑Chile del marco ASTA‑SIGMA. Incluye políticas, guías, plantillas y pipelines necesarios para cumplir la Ley 21.719 (datos personales), la política de interoperabilidad del Estado y el enfoque de riesgo para IA.

## Carpeta rápida

- `ci/` — scripts de validación (`validate_contracts.sh`).
- `guias_operativas/` — guías específicas del overlay (expediente, interoperabilidad, notificaciones, incidentes IA, brechas, continuidad).
- `policies/` — políticas computables TDE-CL.
- `schemas/` — esquemas JSON para validar contratos overlay.
- `templates/` — plantillas TDE-CL (contratos, fichas ST).
- `artefactos/` — modelos de referencia extendidos (ej. OCE TDE-CL).

## Uso sugerido

1. Clona este repo y mantén el overlay en `06-overlay-tde-cl/` como módulo.
2. Personaliza `07-org/` y `08-inventory/` con tus entidades reales.
3. Para cada PR, ejecuta `bash 06-overlay-tde-cl/ci/validate_contracts.sh` y adjunta las evidencias Δ.
4. Cuando surjan nuevas exigencias nacionales, incorpora un subdirectorio `overlays/<pais>/` siguiendo este patrón.

> Las guías y políticas del overlay complementan —no reemplazan— a los libros core del repositorio.
