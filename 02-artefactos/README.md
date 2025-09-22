---
id: DOC-ARTEFACTOS-000
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - 01-manual/MANUAL_ASTA-SIGMA.md
  - 04-adrs/ADR_template.md
---
# Catálogo de artefactos ASTA-SIGMA

Este libro agrupa las plantillas y esquemas que soportan la gobernanza como código. Organiza los artefactos por tipo para facilitar la reutilización:

- `contratos/` — contratos computables (datos, proceso, servicio, suministro, agentes IA) y sus esquemas.
- `portafolio/` — definición de portafolio de iniciativas y capacidades.
- `presentacion/` — plantillas de comunicación ejecutiva derivadas de los artefactos.
- `telemetria/` — modelos de observabilidad comunes (OTel, métricas Δ).
- `ux/` — fichas y pautas de experiencia de usuario.
- `modelos/` — modelos de referencia transversales.

Cada plantilla incluye front-matter con metadatos y comentarios `# Trad:` donde aplica. Contribuciones nuevas deben mantener la convención `TPL-xxx` y la documentación enlazada desde el manual.
