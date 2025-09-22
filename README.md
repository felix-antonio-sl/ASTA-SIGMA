---
id: ONBOARD-000
version: 1.0.0
status: active
date: 2024-05-01
owner: ASTA-SIGMA Core Team
related:
  - MANUAL_ASTA-SIGMA
---
# Manual Día 0 — Puesta en marcha institucional (Guía Express)

Este README es el punto de entrada oficial para instalar el marco ASTA-SIGMA en una organización. Para contexto ampliado y la narrativa completa del sistema consulta [`01-manual/MANUAL_ASTA-SIGMA.md`](01-manual/MANUAL_ASTA-SIGMA.md) y el índice maestro en [`00-overview/INDEX.md`](00-overview/INDEX.md).

## 1) Instalar institucionalidad

- Publica [`07-org/governance/RACI.md`](07-org/governance/RACI.md) y [`07-org/governance/comite_tic_ctd.md`](07-org/governance/comite_tic_ctd.md).
- Designa CTD (titular/subrogante), DPO y CISO.

## 2) Declarar organización y mapa inicial

- Completa [`07-org/organization.yaml`](07-org/organization.yaml) (misión, base legal, contactos).
- Registra [`07-org/units/UN-EJEMPLO.yaml`](07-org/units/UN-EJEMPLO.yaml) y [`07-org/value_streams/EFV-EJEMPLO.yaml`](07-org/value_streams/EFV-EJEMPLO.yaml).
- Crea mapeos [`07-org/mappings/units_to_efv.yaml`](07-org/mappings/units_to_efv.yaml) y [`07-org/mappings/efv_to_st.yaml`](07-org/mappings/efv_to_st.yaml).

## 3) Identificar y priorizar procedimientos (CPAT)

- Usa la guía de CPAT y crea las primeras fichas [`08-inventory/st/ST-*.md`](08-inventory/st/).
- Para cada ST, declara **contratos** (datos, proceso, agente IA, servicio) dentro de [`08-inventory`](08-inventory/).

## 4) Cumplimiento por diseño (TDE + DP + IA)

- Activa políticas [`06-overlay-tde-cl/policies/*.yaml`](06-overlay-tde-cl/policies/).
- Usa las guías [`06-overlay-tde-cl/guias_operativas/GO-*.md`](06-overlay-tde-cl/guias_operativas/) para expediente, interoperabilidad (PISEE), notificaciones, incidentes IA y brechas.

## 5) Calidad, observabilidad y evidencia

- Define SLO/SLI por ST, activa OTel según [`04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md`](04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md) y registra evidencias Δ.

## 6) Pipeline (CI) y quality gates

- Ejecuta `bash 06-overlay-tde-cl/ci/validate_contracts.sh` localmente.
- Activa `.github/workflows/validate.yml` para bloquear PRs sin base legal/EIPD/riesgo IA.
