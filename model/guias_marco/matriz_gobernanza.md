# Matriz de Gobernanza Computable ASTA-SIGMA

**Versión:** 1.0

Este documento centraliza todos los controles de gobernanza del marco, mapeando cada regla a su implementación y método de verificación. El objetivo es que esta matriz sea la "fuente de la verdad" para la auditoría y la automatización de la gobernanza.

| ID Control | Dominio | Regla de Gobernanza | Implementación (Artefacto Computable) | Método de Verificación (CI/CD Gate) | Tier de Riesgo Aplicable |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **IA-001** | Agente IA | La autonomía del agente no debe superar el nivel `RAG` para sistemas de riesgo R2/R3 sin justificación explícita. | `agent_contract.yaml` (campo `autonomy_level`) | `validate-schema('agent_contract.schema.json')` y `lint-rule('autonomy-check')` | R2, R3 |
| **IA-002** | Agente IA | Todo agente debe operar por defecto en modo `HUMAN_IN_THE_LOOP` para sistemas R2/R3. | `agent_contract.yaml` (campo `interaction_mode`) | `validate-schema('agent_contract.schema.json')` y `lint-rule('hitl-default')` | R2, R3 |
| **IA-003** | Agente IA | El presupuesto mensual de tokens no debe exceder el límite definido. | `agent_contract.yaml` (campo `costs.monthlyTokenBudget`) | `validate-schema('agent_contract.schema.json')` | R1, R2, R3 |
| **IA-004** | Agente IA | Las respuestas de agentes RAG deben incluir citas de la fuente de conocimiento. | `agent_contract.yaml` (campo `ragPolicy.citations.required`) | `validate-schema('agent_contract.schema.json')` | R2, R3 |
| **DATA-001** | Datos | Los productos de datos deben tener un SLO de `freshness` definido. | `data_contract.yaml` (campo `slo.freshness_p95`) | `validate-schema('data_contract.schema.json')` | R1, R2, R3 |
| **DATA-002** | Datos | No debe haber PII en productos de datos clasificados como P1. | `data_contract.yaml` (campo `security.pii`) | `validate-schema('data_contract.schema.json')` y `lint-rule('pii-check')` | R1, R2, R3 |
| **PROC-001** | Proceso | El tiempo de ciclo (p95) de un proceso no debe superar el SLA definido. | `process_contract.yaml` (campo `sla.cycle_time_p95`) | `validate-schema('process_contract.schema.json')` | R2, R3 |
| **API-001** | Servicio | Toda API pública debe tener un `openapi_ref` válido. | `service_contract.yaml` (campo `openapi_ref`) | `validate-schema('service_contract.schema.json')` y `lint-rule('openapi-exists')` | R1, R2, R3 |
| **API-002** | Servicio | El SLO de disponibilidad de una API no debe ser menor a 99.9% para sistemas R3. | `service_contract.yaml` (campo `slo.availability_pct`) | `validate-schema('service_contract.schema.json')` y `lint-rule('slo-min-r3')` | R3 |
| **SUPPLY-001** | Suministro | Toda dependencia externa crítica (R3) debe tener un `op_guide_ref` para contingencias. | `supply_contract.yaml` (campo `contingency_tests.op_guide_ref`) | `validate-schema('supply_contract.schema.json')` | R3 |
