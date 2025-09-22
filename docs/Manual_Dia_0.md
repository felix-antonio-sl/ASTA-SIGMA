# Manual Día 0 — Puesta en marcha institucional (Guía Express)

## 1) Instalar institucionalidad
- Publica `org/governance/RACI.md` y `org/governance/comite_tic_ctd.md`.
- Designa CTD (titular/subrogante), DPO y CISO.

## 2) Declarar organización y mapa inicial
- Completa `org/organization.yaml` (misión, base legal, contactos).
- Registra `org/units/UN-EJEMPLO.yaml` y `org/value_streams/EFV-EJEMPLO.yaml`.
- Crea mapeos `org/mappings/units_to_efv.yaml` y `org/mappings/efv_to_st.yaml`.

## 3) Identificar y priorizar procedimientos (CPAT)
- Usa la guía de CPAT y crea las primeras fichas `inventory/st/ST-*.md`.
- Para cada ST, declara **contratos** (datos, proceso, agente IA).

## 4) Cumplimiento por diseño (TDE + DP + IA)
- Activa políticas `tde-chile/policies/*.yaml` (21.719 e IA por riesgo).
- Usa guías `tde-chile/guias_operativas/GO-*.md` para expediente, interoperabilidad (PISEE), notificaciones, incidentes IA y brechas.

## 5) Calidad, observabilidad y evidencia
- Define SLO/SLI por ST, activa OTel según `arquitectura/ADR-003_*` y registra evidencias Δ.

## 6) Pipeline (CI) y quality gates
- Ejecuta `bash tde-chile/ci/validate_contracts.sh` localmente.
- Activa `.github/workflows/validate.yml` para bloquear PRs sin base legal/EIPD/riesgo IA.
