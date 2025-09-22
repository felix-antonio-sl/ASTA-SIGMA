---
id: DOC-ONBOARD-000
version: 1.1.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - 01-manual/MANUAL_ASTA-SIGMA.md
  - 00-overview/INDEX.md
---
# Manual Día 0 — Puesta en marcha institucional (Guía Express)

Este README es el punto de entrada único para iniciar la adopción del sistema ASTA-SIGMA. Cada paso referencia artefactos del repositorio reorganizado por "libros" para que la institución habilite gobernanza, operación y aprendizaje continuo desde el primer día.

## 1) Instalar institucionalidad

- Publica `07-org/governance/RACI.md` y `07-org/governance/comite_tic_ctd.md`.
- Designa CTD (titular/subrogante), DPO y CISO.

## 2) Declarar organización y mapa inicial

- Completa `07-org/organization.yaml` (misión, base legal, contactos).
- Registra `07-org/units/UN-EJEMPLO.yaml` y `07-org/value_streams/EFV-EJEMPLO.yaml`.
- Crea mapeos `07-org/mappings/units_to_efv.yaml` y `07-org/mappings/efv_to_st.yaml`.

## 3) Identificar y priorizar procedimientos (CPAT)

- Usa las guías del libro `03-guias/` (marco y operativas) y crea las primeras fichas `08-inventory/st/ST-*.md`.
- Para cada ST, declara **contratos** (datos, proceso, agente IA, servicio) utilizando las plantillas de `02-artefactos/contratos/`.

## 4) Cumplimiento por diseño (TDE + DP + IA)

- Activa políticas `06-overlay-tde-cl/policies/*.yaml` (Ley 21.719 e IA por riesgo) y las generales en `05-policies/`.
- Usa guías `06-overlay-tde-cl/guias_operativas/GO-*.md` para expediente, interoperabilidad (PISEE), notificaciones, incidentes IA y brechas.

## 5) Calidad, observabilidad y evidencia

- Define SLO/SLI por ST, habilita telemetría según `02-artefactos/telemetria/Esquema_Telemetria_ASTA_OTel.md` y registra evidencias Δ siguiendo el manual.

## 6) Pipeline (CI) y quality gates

- Ejecuta `bash 06-overlay-tde-cl/ci/validate_contracts.sh` localmente.
- Activa `.github/workflows/validate.yml` para bloquear PRs sin base legal/EIPD/riesgo IA y publicar evidencias Δ por cambio.

> **Siguiente paso:** consulta `01-manual/MANUAL_ASTA-SIGMA.md` para entender el porqué del marco, sus artefactos y la matriz de gobernanza computable.
