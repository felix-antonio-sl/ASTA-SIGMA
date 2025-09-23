# ASTA-SIGMA

## Project Structure

```
ASTA-SIGMA
├── arquitectura
│   ├── templates
│   │   └── ADR_template.md
│   ├── ADR-001_Patron_Validacion_Contratos_Datos.md
│   ├── ADR-002_Adopcion_MCP.md
│   ├── ADR-003_Estandar_Telemetria_OTel_IA_RAG.md
│   ├── ADR-004_Politica_FinOps_y_RateLimit_por_Tier.md
│   ├── ADR-005_Estandar_Linaje_y_DQ_Computable.md
│   ├── ADR-006_DR_Chaos_Obligatorio_Suministro.md
│   ├── Esquema_Telemetria_ASTA_OTel.md
│   └── Modelo_Referencia_Tecnico_OCE.md
├── diseno_experiencia
│   └── plantilla_ficha_ux.md
├── guias_marco
│   ├── GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
│   ├── GM-003_Playbook_Definicion_Contratos_Interfaz.md
│   └── Guia_Madurez_Equipos_Flujo_Valor.md
├── guias_operativas
│   ├── templates
│   │   └── GO_template.md
│   ├── GO-002_Monitoreo_Calidad_Agentes_IA.md
│   ├── GO-003_Manual_Redaccion_Telegrafica.md
│   ├── GO-004_GameDays_Proveedores_y_DR.md
│   └── GO-005_Diseno_UI.md
├── policies
│   ├── POL-ABUSO-LLM.yaml
│   ├── POL-FINOPS-IA.yaml
│   ├── POL-TRAZA-IA.yaml
│   ├── politica_slo_por_riesgo.yaml
│   └── politica_temperatura_llm.yaml
├── portfolio
│   └── plantilla_ficha_portafolio.yaml
├── presentacion
│   ├── templates
│   │   ├── plantilla_informe_arquitectura.md
│   │   ├── plantilla_informe_portafolio.md
│   │   ├── plantilla_plan_iniciativa.md
│   │   └── plantilla_plan_maestro_transformacion.md
│   └── README.md
├── aplanado.md
├── LICENSE
├── Marco_ASTA-SIGMA.md
├── Metodologia_ASTA-SIGMA.md
└── README.md
```

## File Contents

### productos/ASTA-SIGMA/LICENSE

```
MIT License

Copyright (c) [2025] [Gobierno Regional de Ñuble]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

### productos/ASTA-SIGMA/Marco_ASTA-SIGMA.md

```markdown
# Manual de Referencia: Marco ASTA-SIGMA v1.0

Un Producto para Diseñar, Operar y Transformar organizaciones complejas.

## Parte 1: Fundamentos y Principios

### 1.1. Visión y Propósito del Marco

ASTA-SIGMA es el marco operativo estándar del GORE Ñuble para la transformación digital y la integración de IA. Su propósito es asegurar que cada iniciativa tecnológica sea:

* Alineada: Responde a una necesidad de valor público clara y medible.
* Robusta: Es segura, resiliente y cumple con la normativa por diseño.
* Adaptable: Puede evolucionar de forma iterativa y continua.
* Observable: Su operación y decisiones son transparentes y auditables.

### 1.2. Principios Fundamentales

* Valor Público Verificable: La justificación es el impacto medible en los ciudadanos o en la eficiencia.
* Simplicidad y Esencialismo: Modelar lo mínimo necesario (`EA-Ligera`).
* Gobernanza como Código: Políticas, controles y contratos son artefactos versionados y automatizados.
* Adaptabilidad Continua: La transformación es un ciclo, no un proyecto (`#NoProyectos`).
* Humano en el Centro, IA como Agente: La tecnología aumenta las capacidades humanas dentro de Sistemas de Trabajo definidos.
* Equipos Estables como Unidad de Producción: El trabajo fluye hacia equipos persistentes y multidisciplinarios, no al revés.

### 1.3. El Metamodelo ASTA-SIGMA: Estructura (Σ) y Dinámica (Δ)

La realidad de la organización se modela con una dualidad:

* Σ (Sigma - Estructura): El diseño, la arquitectura, las políticas. *Lo que planificamos*.
* Δ (Delta - Dinámica): La operación, las métricas, los eventos. *Lo que medimos y controlamos*.

| Grupo | Entidad Σ (Estructura) | Entidad Δ (Dinámica) |
| :--- | :--- | :--- |
| Entidades Fundamentales | Equipo de Flujo de Valor | Capacidad del Equipo (Rendimiento) |
| | Sistema de Trabajo (ST) | Métricas de Valor (KPI/OKR) |
| | Capacidad | Objetivos de Nivel de Servicio (SLO) |
| | Servicio | Indicadores de Nivel de Servicio (SLI) |
| | Proceso | Métricas de Flujo (Tiempo de Ciclo, STP) |
| | Agente Digital (IA) | Métricas de IA (Fidelidad, Latencia) |
| | Actor Humano | Métricas de Experiencia (CSAT) |
| | Producto de Datos | Métricas de Calidad de Datos (DQ) |
| | Aplicación/Plataforma | Métricas de Rendimiento |
| Entidades del Entorno | Contexto Externo | Señales / Cambios del Entorno |
| | Dependencia Externa | Estado de Salud del Proveedor |
| Entidades de Gobernanza | Política / Control | Evidencia Operativa (Logs, Alertas) |
| | Riesgo | Incidentes / Tasa de Fallo |
| | Evento | Presupuesto de Error |
| | Contrato | Cumplimiento del Contrato |
| | Contrato de Suministro | Cumplimiento de SLA del Proveedor |

### 1.4. Gobernanza del Agente Digital: Propósito, Cognición y Espectros

Cada Agente de IA se diseña y gobierna definiendo su posición en estos tres ejes, junto con su propósito estratégico y su función cognitiva principal:

* Propósito HCAI: Define la intención estratégica de la IA en relación con el humano.
  * `Asistir`: La IA actúa como un ayudante que responde a peticiones (ej. un chatbot de preguntas frecuentes).
  * `Aumentar`: La IA proporciona herramientas para potenciar las habilidades humanas (ej. un generador de código).
  * `Orquestar`: La IA coordina a múltiples agentes (humanos o IA) para cumplir un objetivo.
  * `Automatizar`: La IA ejecuta un proceso de forma autónoma con supervisión.

* Ciclo Cognitivo SDA: Descompone la tarea del agente en sus funciones primarias.
  * `Sentir`: Percibir, monitorizar y comprender el estado de un sistema o entorno.
  * `Decidir`: Analizar información, evaluar opciones y seleccionar un curso de acción.
  * `Actuar`: Ejecutar una acción o plan para modificar el estado del sistema.

Los 3 Espectros:

1. Espectro de Autonomía (Arquitectura Cognitiva): `RAG` → `ReAct` → `Planificar y Ejecutar`.
2. Espectro de Responsabilidad (Rol Delegado): `Monitorear` → `Proveer Info/Capacidades` → `Controlar` → `Coproducir` → `Ejecutar`.
3. Espectro de Interacción (Contrato Sociotécnico): `Máquina-en-el-Bucle` → `Iniciativa Mixta` → `Humano-en-el-Bucle (HITL)` → `Autónomo`.

Regla de Oro: Para cualquier proceso con riesgo, el modo por defecto es Humano-en-el-Bucle (HITL).

## Parte 2: El Ritmo Operativo Continuo

### 2.1. Visión General del Flujo de Valor

La transformación no se gestiona como un proyecto con inicio y fin, sino como un flujo de valor continuo operado por equipos estables. Este flujo tiene un ritmo (`cadencia`) marcado por dos bucles:

1. Bucle Interno (PDCA - Semanal/Quincenal): El equipo de flujo de valor opera en ciclos cortos (sprints, kanban) para planificar, hacer, verificar y actuar sobre pequeñas mejoras de forma constante.
2. Bucle Externo (Gobernanza - Trimestral): A final de cada `cadencia`, el equipo participa en una Revisión de Valor y Capacidad (RVC), donde se reporta el valor generado y se toman decisiones de inversión para el siguiente ciclo.

Las siguientes secciones no son fases secuenciales de un proyecto, sino actividades continuas y paralelas que un equipo maduro realiza constantemente.

### 2.2. Actividad Continua: Enmarcar y Priorizar

* Objetivo: Mantener un backlog priorizado de "fricciones" a resolver y oportunidades a explorar.
* Actividades Clave:
  * Monitoreo constante de KPIs y feedback de usuarios para detectar problemas.
  * Alineación de nuevas ideas con los Pilares de Valor Estratégico.
  * Análisis de viabilidad tripartito rápido para ideas prometedoras.
* Entregables:
  * Backlog priorizado.
  * `Ficha de Sistema de Trabajo (ST)` actualizada para cada iniciativa significativa.

### 2.3. Actividad Continua: Diseñar la Solución

* Objetivo: Mantener una arquitectura limpia y evolutiva.
* Actividades Clave:
  * Diseño emergente de soluciones a través de modelado ligero (C4, BPMN).
  * Creación y actualización de Contratos Computables y ADRs.
* Entregables:
  * Artefactos de diseño versionados en Git.

### 2.4. Actividad Continua: Realizar y Construir

* Objetivo: Entregar incrementos de valor funcionales de forma frecuente y fiable.
* Actividades Clave:
  * Desarrollo de código, pipelines, infraestructura y pruebas automatizadas.
  * Integración continua con validación de contratos.
* Entregables:
  * Software desplegable.

### 2.5. Actividad Continua: Operar, Medir y Aprender

* Objetivo: Garantizar la estabilidad del servicio y capturar datos sobre su rendimiento y uso.
* Actividades Clave:
  * Despliegue continuo y monitoreo de la salud del servicio (dashboards de SLOs).
  * Recolección de logs, trazas y métricas.
* Entregables:
  * Servicios operando en producción.
  * Datos de observabilidad.

### 2.6. Actividad Continua: Adaptar y Evolucionar

* Objetivo: Usar los datos y el aprendizaje para informar el siguiente ciclo de mejora.
* Actividades Clave:
  * Análisis de métricas y feedback en retrospectivas.
  * Repriorización del backlog.
* Entregables:
  * Decisiones informadas para el siguiente ciclo PDCA.

## Parte 3: El Kit de Herramientas (Artefactos Operativos) — Versión 1 optimizada

### 3.1. Artefacto 1: Ficha de Sistema de Trabajo (ST)

```markdown
### Ficha de Sistema de Trabajo: [Nombre del ST]

- ID: ST-XXX
- Versión: 1.0
- Equipo Responsable: [Nombre del Equipo de Flujo de Valor]
- Cadencia de Revisión: Trimestral
- Fecha: YYYY-MM-DD

##### Vista Σ (Estructura)

1. Propósito y Valor Público
   - *Descripción del valor que este sistema entrega a ciudadanos u otros stakeholders.*

1.b Alineación Estratégica
   - Objetivo Estratégico Principal: [Ej: "Reducir los tiempos de ciclo del proceso X"]
   - Contribución a KPIs de Negocio: `KPI-XXX`, `KPI-YYY`

1.c Contexto Externo y Actores Clave
   - Reguladores: [Nombre del Regulador, Norma aplicable]
   - Actores de Control Externo: [CGR, DIPRES, MDSF]
   - Proveedores Críticos: [Nombre del Proveedor, Servicio que presta]
   - Entidades Colaboradoras: [Nombre de la Institución, Acuerdo de colaboración]
   - Mercado Ciudadano: [Segmento de la población, Necesidades clave]

1.d Interoperabilidad y Estándares
   - Estándares de dato/interfaz: [DCAT-CL, X-Road, OpenAPI 3.1, IDE Ñuble]
   - Catálogo de APIs: [URL/Nomenclatura]
   - Identificadores y metadatos: [Ej: RUT, ID trámite, versión de esquema]

1.e Accesibilidad e Inclusión
   - Criterios: [WCAG 2.2 AA, lenguaje claro]
   - Soportes: [lectores de pantalla, contraste, teclado]

2. Capacidades de Negocio que Realiza
   - `CE-XXX`: [Nombre Capacidad 1]
   - `CE-YYY`: [Nombre Capacidad 2]

2.b Capacidades Ofrecidas (para otros ST)
   - `CAP-XXX`: [Nombre Capacidad Ofrecida 1]
   - `CAP-YYY`: [Nombre Capacidad Ofrecida 2]

3. Servicios Expuestos y SLOs
   - `SV-XXX`: [Nombre Servicio 1]
     - SLO de Disponibilidad: 99.5%
       - Contribución a KPI: *"Asegura que el servicio esté operativo para no impactar negativamente el KPI-XXX de tiempo de ciclo."*
     - SLO de Latencia p95: < 500ms
       - Contribución a KPI: *"Una baja latencia mejora la experiencia del funcionario, contribuyendo al KPI-YYY de adopción de la plataforma."*

4. Proceso Principal (Alto Nivel)
   - *Diagrama Mermaid/PlantUML o descripción de los pasos clave.*

5. Actores Clave
   - Humanos: [Rol 1], [Rol 2]
   - Agentes Digitales: `AG-XXX`: [Nombre Agente 1]

5.b Diseño de Experiencia de Usuario (UX)
   - Ficha de UX Asociada: `UX-XXX`

5.c Análisis de Impacto Sociotécnico (Facetas del Trabajo)
   - Toma de Decisiones: *¿Cómo cambia la forma en que los actores humanos toman decisiones? ¿El agente provee opciones, hace recomendaciones o decide autónomamente?*
   - Comunicación y Coordinación: *¿Cómo afecta el agente la comunicación entre los miembros del equipo o con otros ST? ¿La facilita, la formaliza o introduce nuevas barreras?*
   - Aprendizaje y Conocimiento: *¿El agente ayuda a capturar y compartir conocimiento tácito o solo opera con conocimiento explícito?*

6. Productos de Datos (Consumidos/Producidos)
   - Consume: `DP-XXX`
   - Produce: `DP-YYY`

7. Soporte Tecnológico
   - Aplicaciones: `AP-XXX`
   - Plataformas: `PL-YYY`

7.b Dependencias Internas (consume capacidades de otros ST)
   - Consume `CAP-ABC` del ST `ST-OTRO-SISTEMA`

8. Gobernanza y Mandato Regulatorio
   - Tier de Riesgo: [R1, R2, o R3 según GM-002]
   - Mandato Principal: [Ley o Resolución que rige el ST, ej. "Res. N° 30 CGR para Rendiciones"]
   - Políticas Aplicables: [ID Política 1], [ID Control 2]
   - Riesgos Principales: [ID Riesgo 1] (Impacto: Alto, Probabilidad: Media)

9. Controles de Seguridad Computables (Zero-Trust)
   - Autenticación: [Ej: OIDC con proveedor corporativo, API Key gestionada en Vault]
   - Autorización: [Ej: RBAC con roles 'Lector', 'Editor' / ABAC basado en atributo 'División']
   - Cifrado de Datos (en reposo): [Ej: AES-256 gestionado por el proveedor cloud]
   - Registro de Auditoría (Logging): [Ej: Todas las acciones de escritura se registran en log inmutable 'XYZ']

##### Vista Δ (Dinámica)

1. Presupuesto de Error (Mensual)
   - *Ej: PT21M36S de downtime permitido para un SLO de 99.9%.*

2. Puntos de Intervención Humana (HITL)
   - *Cola para excepciones de aprobación.*
   - *Escalamiento a supervisor si tarea > PT48H en cola.*

3. Bucles de Control y Guías Operativas
   - `BC-XXX`: [Nombre del Bucle de Control]
     - Sensor (SLI): Latencia p95 de `SV-XXX`.
     - Objetivo (SLO): <= 500ms.
     - Actuador (Respuesta): Guía Operativa `GO-YYY` (ej. auto-escalado de pods).
   - `GO-XXX`: Procedimiento en caso de fallo de API externa.
   - `GO-YYY`: Procedimiento para rollback de despliegue.

4. Evidencia de Cumplimiento
   - *Log inmutable de todas las decisiones y acciones (Bitácora de Decisión).*
   - *Reporte automático mensual de cumplimiento de SLOs.*
   - *Evidencia para CGR: [ID de la evidencia, ej. "Informe de Rendición Aprobada"].*
```

### 3.2. Artefacto 2: Contratos Computables (YAML)

*(Plantillas YAML para validar en pipelines de CI/CD). Claves en inglés cuando convenga por compatibilidad, con explicación en español. Se referencian ADRs y Políticas de forma consistente.*

#### 3.2.1. Contrato de Agente (IA)

```yaml
kind: agent_contract
agent_id: AG-001
version: "1.1.0"

model:
  provider: "<openai|azure|llama|local>"
  name: "<gpt-4.1-mini|llama3.1-70b|...>"
  version: "<semver|build>"
  endpoint: "<url|logical-name>"

#  Gobernanza Sociotécnica 
# Enumeraciones válidas:
# hcai_purpose: [ASSIST, AUGMENT, ORCHESTRATE, AUTOMATE]
# cognitive_function: [SENSE, DECIDE, ACT, SENSE_AND_DECIDE, DECIDE_AND_ACT, SENSE_DECIDE_ACT]
# autonomy_level: [NONE, ASSISTED, SUPERVISED, RAG, SEMIAUTONOMOUS, AUTONOMOUS]
# responsibility_level: [PROVIDE_INFO, RECOMMEND, APPROVE, EXECUTE]
# interaction_mode: [HUMAN_IN_THE_LOOP, HUMAN_OVER_THE_LOOP, MACHINE_IN_THE_LOOP]

hcai_purpose: ASSIST
cognitive_function: SENSE_AND_DECIDE
autonomy_level: RAG
responsibility_level: PROVIDE_INFO
interaction_mode: HUMAN_IN_THE_LOOP # Default for R2/R3 systems. Override requires explicit justification.

legal_purpose: "Apoyo a la evaluación de admisibilidad según Art. X de la Ley Y"
base_legal_uso_datos: "Ley 19.628 Art. 20"
final_human_supervisor: "[Rol del funcionario que supervisa la decisión]"

telemetry: # ADR-003
  openTelemetry: true
  correlationFields: [trace_id, st_id, ag_id, user_pid]
  minLogFields: [ttft_ms, tokens_in, tokens_out, citations, rag_hits]

costs: # ADR-004
  monthlyTokenBudget: 50000
  monthlyUSDBudget: 300
  alerts: {warn_pct: 0.8, hard_stop_pct: 1.0}

security_and_privacy:
  piiDlp:
    policy: "redact_pii:true, tokenize:rut,email,phone"
    logRetentionDays: 30
  policies:
    toolAllowlist: ["identity.mcp", "legal_search.mcp"]
    operationDenylist: ["download_raw_sensitive_data"]

quality_and_resilience:
  hitl:
    rulesByRisk:
      R3_HIGH: ["confidence<0.90", "sampling>=10%"]
      R2_MEDIUM: ["confidence<0.85", "sampling>=5%"]
      R1_LOW: ["confidence<0.80", "sampling>=2%"]
  ragPolicy:
    citations: {required: true, granularity: "article"}
  qualityMetrics:
    fidelitySLO: 0.98
    citationPrecisionSLO: 0.99

lifecycle:
  status: "pilot" # pilot | production | deprecated | retired
  mandatoryKillSwitch: true
  promotionToProductionCriteria:
    greenSLOsLastDays: 30
    securityAuditOK: true
    operationalCostUnderLimit: true
  rollbackPlanDefined: true

evaluation:
  judgeLlmFidelityThreshold: 0.98
  minRegressionSuiteSize: 200
  redTeamCadence: "monthly"

tasks:
  - id: "consulta_normativa"
    type: "operativa_normativa"
    temperature_max: 0.2
    top_p_max: 0.7
  - id: "resumen_informe"
    type: "analisis_tactico"
    temperature_max: 0.5
    top_p_max: 0.9
```

#### 3.2.2. Contrato de Datos

```yaml
kind: data_contract
product_name: billing_invoices
version: "2.2.0"
interfaces: ["sql:data_warehouse.gold.billing_invoices"]

schema: # ADR-001
  version: "2.2.0"
  primaryKey: [invoice_id]
  fields:
    - {name: invoice_id, type: string, required: true}

quality:
  checks:
    - {name: unique_key, rule: "unique(invoice_id)", severity: error}

slo:
  freshness_p95: "PT30M"
  availability_pct: 99.9

security: # ADR-005
  classification: P1
  pii: false

governance:
  lineage:
    sources: ["st-erp.raw_invoices"]
  retention:
    duration: "P10Y"
  legalBasisForProcessing: "Law X, Art. Y"
  dpiaReference: "DPIA-007"
```

#### 3.2.3. Contrato de Proceso

```yaml
kind: process_contract
process_name: invoice_approval
version: "1.1.0"

sla:
  cycle_time_p95: "PT180M"
  stp_target_pct: 80 # Straight-Through Processing

hitl:
  queues: ["exceptions.approval"]

saga:
  compensations:
    - {action: "revert_publication", on: "publish_to_erp"}
```

#### 3.2.4. Contrato de Conocimiento (RAG)

```yaml
kind: knowledge_contract
collection_name: internal_regulations
version: "1.1.0"

# Source Governance
source_authority_list:
  - issuer: "CGR"
    types: ["resolution", "ruling"]
  - issuer: "DIPRES"
    types: ["directive", "manual"]
blocked_sources: ["drafts", "personal_email", "unsigned_documents"]

# Knowledge Lifecycle
expiry_policy:
  default: "P365D"
  override_by_type:
    resolution: "P5Y"
    directive: "P2Y"
retention:
  duration: "P3Y"

# Retrieval Quality
indexing:
  min_metadata: [doc_id, type, issuer, emission_date, validity]
  mandatory_filters: [{status: "valid"}]

citations:
  style: "required_exact"
  fields: ["issuer", "doc_id", "emission_date", "article"]
```

#### 3.2.5. Contrato de Suministro

```yaml
kind: supply_contract
dependency_id: DEP-001
provider_name: "Identity API Provider"
service_name: "Identity Validation v2"
version: "1.1.0"

sla:
  availability_pct: 99.9
  response_time_p95: "PT0.25S"

error_budget:
  monthly_target_pct: 1.0
  sla_remedies: ["SLA_credits", "RCA_in_PT120H"]

compliance: # ADR-006
  sbom_required: true
  slsa_min_level: "L3"
  audits: ["ISO 27001", "SOC2 Type II"]
  client_audit_rights: true

security:
  shared_data: [rut, name]
  regulatory_compliance: ["Law 19.628"]

capacity_and_quotas:
  rate_limit_rps: 50
  burst: 100
  monthly_quota: 1000000
  backoff_policies: "exponential,jitter"

incident_communications:
  status_page_required: true
  max_notification_window: "PT30M"

contingency_tests:
  quarterly_chaos_test: true
  min_rto: "PT15M"
  min_rpo: "PT5M"
  op_guide_ref: "GO-004"
```

#### 3.2.6. Contrato de Colaboración

```yaml
kind: collaboration_contract
agreement_id: AC-GORE-MUN-001
version: "1.0.0"

# Purpose: Models governance agreements and shared services between autonomous organizations.

participants:
  - entity: "GORE Ñuble"
    role: "Service Provider and Coordinator"
  - entity: "Punilla Municipalities Association"
    role: "Consumer and Governance Participant"

common_objective: "To accelerate the digital transformation of the municipalities in the Punilla Province."

governance_agreements:
  - "Strategic decisions will be made at the Regional DT Roundtable."
  - "Participants commit to adhering to the data standards defined at the Roundtable."

shared_services:
  - service_id: "AS-GORE-01"
    name: "AI Assistants as a Service"
    provider: "GORE Ñuble"
    description: "The GORE offers access to its portfolio of AI assistants for municipal use."
    agreed_sla: "Business hours technical support; 99.0% availability."

responsibilities:
  - entity: "GORE Ñuble"
    responsibility: "Maintain and operate shared services; convene the Regional DT Roundtable."
  - entity: "Punilla Municipalities Association"
    responsibility: "Promote the adoption of services in its municipalities; contribute data to the Ñuble SDI."
```

#### 3.2.7. Contrato de Servicio (API)

```yaml
kind: service_contract
service_id: SV-IDENTIDAD-V2
version: "1.0.0"
openapi_ref: "schemas/identidad-v2.openapi.yaml"
lifecycle: production

slo:
  availability_pct: 99.9
  latency_p95_ms: 250
  error_rate_pct_max: 1.0

error_budget:
  window_days: 30
  actions_on_breach: ["freeze_deploys","mandatory_rca"]

security:
  authn: OIDC
  authz: RBAC
  audit_log: immutable

ratelimits:
  rps: 50
  burst: 100

compliance:
  sbom_required: true
  slsa_min_level: "L3"

contract_tests:
  dredd: "tests/dredd.yml"
  prism_mock: "mocks/identidad-v2.prism.yaml"
```

### 3.3. Artefacto 3: Registros de Decisión de Arquitectura (ADR)

Los ADRs son documentos cortos y versionados que capturan decisiones arquitectónicas importantes. Utilice la siguiente plantilla para crear nuevos ADRs dentro del directorio `arquitectura/`.

* [Plantilla de ADR](./arquitectura/templates/ADR_template.md)
* Ejemplos de ADRs Implementados:

  * ADR-003: Estándar de Telemetría y Trazabilidad OTel para IA/RAG (`./arquitectura/ADR-003_Estandar_Telemetria_OTel_IA_RAG.md`)
  * ADR-004: Política de FinOps y Rate-Limit por Tier (`./arquitectura/ADR-004_Politica_FinOps_y_RateLimit_por_Tier.md`)
  * ADR-005: Estándar de Linaje y DQ computable (`./arquitectura/ADR-005_Estandar_Linaje_y_DQ_Computable.md`)
  * ADR-006: DR/Chaos como obligación de Suministro (`./arquitectura/ADR-006_DR_Chaos_Obligatorio_Suministro.md`)

### 3.4. Artefacto 4: Guías Operativas

Runbooks para responder a situaciones específicas. Utilice la plantilla en `guias_operativas/`.

* [Plantilla de Guía Operativa](./guias_operativas/templates/GO_template.md)

### 3.5. Artefacto 5: Ficha de Experiencia de Usuario (UX)

Enfocado en capturar la perspectiva del usuario (Jobs-to-be-Done, Personas y User Journey).

* [Plantilla de Ficha de UX](./diseno_experiencia/plantilla_ficha_ux.md)
* Ejemplos:

  * GO-002 Monitoreo de Calidad de Agentes de IA (`./guias_operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md`)
  * GO-003 Manual de Redacción Telegráfica para Prompts (`./guias_operativas/GO-003_Manual_Redaccion_Telegrafica.md`)

### 3.6. Artefacto 6: Revisión de Valor y Capacidad (RVC)

```markdown
### Revisión de Valor y Capacidad: Equipo [Nombre del Equipo]

- Período: [Ej: Q3 2025]
- Fecha de Revisión: YYYY-MM-DD

1. Valor Entregado (Resultados del Último Cadence)
   - Progreso de OKRs/KPIs:
     - *Métrica de Valor 1: [Resultado vs. Objetivo]*
     - *Métrica de Valor 2: [Resultado vs. Objetivo]*
   - Cumplimiento de SLOs de Servicios Clave:
     - *Servicio 1: [Disponibilidad, Latencia] vs. SLO.*
   - Hitos Clave Entregados:
     - *Mejora/Funcionalidad 1 y su impacto.*
     - *Reducción de Riesgo/Deuda Técnica 2.*
   - Evolución Sociotécnica:
     - *Nivel de Smartness actual del ST (ej. de 'Ejecución por Script' a 'Adaptación Formuláica').*

2. Gobernanza como Código – Evidencias
   - *% de Contratos validados en CI/CD: [XX]%*
   - *% de trazas OTel con cobertura completa: [XX]%*
   - *% de dependencias críticas con game-day ejecutado: [XX]%*

3. Hoja de Ruta de Opciones (Siguiente Cadence)
   - Fricciones a Resolver:
     - *Prioridad 1: [Descripción de la fricción y ST afectado].*
   - Opciones a Explorar (Real Options):
     - *Iniciativa 1: [Exploración de nueva tecnología/proceso].*
   - Objetivos Propuestos (OKRs/KPIs):
     - *Objetivo 1 para el próximo trimestre.*

4. Solicitud de Capacidad (Modelo de Inversión)
   - Capacidad Actual: [Nº de miembros, costo operativo trimestral].
   - Decisión propuesta:
     - [ ] Mantener  
     - [ ] Expandir: [+N miembros / +$X presupuesto] (justificación basada en ROI/valor)  
     - [ ] Reducir: [-N miembros / -$X presupuesto] (justificación)
   - Riesgos y Dependencias: *Riesgos clave para cumplir los objetivos del próximo cadence.*
```

### 3.7. Artefacto 7: Ficha de Iniciativa

```yaml
id: INIT-XXX-001
version: 1.0
status: proposed # proposed | active | completed | cancelled
date: 'YYYY-MM-DD'

initiative:
  name: "Nombre de la Iniciativa"

  strategicAlignment:
    planHorizon: "Horizonte de Planificación (ej. Q3 2025)"
    kpiContribution:
      - "ID del KPI al que contribuye"

  impactsSystemOfWork:
    - id: "ID del ST impactado"
      description: "Descripción del impacto (ej. 'Implementa la capacidad X', 'Mejora el SLO Y')."

  owner:
    team: "Equipo responsable de la ejecución"

  scope:
    description: "Descripción del alcance del proyecto."
    inScope:
      - "Entregable 1"
      - "Entregable 2"
    outOfScope:
      - "Actividad 1 fuera de alcance"

  definitionOfDone:
    - "Piloto operativo"
    - "Informe de resultados generado"
```

### 3.8. Artefacto 8: Política Computable

```yaml
id: POL-XXX
version: 1.0
status: active # active | draft | deprecated
date: 'YYYY-MM-DD'

# Purpose: Descripción en lenguaje natural de la política.
# Applicability: A qué aplica esta política (ej. "Toda IPR de base tecnológica").

policy:
  name: "Nombre de la Política"
  description: "Descripción detallada."
  rules:
    - id: "rule-001"
      name: "Nombre de la Regla"
      description: "Descripción de la regla."
      condition: "iniciativa.uses_ia == true"
      evidenceRequired:
        - "Descripción de la evidencia 1."
        - "Descripción de la evidencia 2."
      approver: "Rol Aprobador (ej. CISO, DPO, Subcomité de IA)"
```

## Parte 4: Planificación y Gestión Estratégica de la Transformación

### 4.1. Artefacto 9: Plan Maestro de Transformación Digital

Documento fundacional que articula visión, pilares, hoja de ruta plurianual y gobernanza.

* [Plantilla de Plan Maestro](./presentacion/templates/plantilla_plan_maestro_transformacion.md)

### 4.2. Artefacto 10: Ficha de Portafolio de Transformación

Representación computable del Plan Maestro (pilares, KPIs organizacionales, inventario de ST e Iniciativas).

* [Plantilla de Ficha de Portafolio](./portfolio/plantilla_ficha_portafolio.yaml)

### 4.3. Informe de Avance de la Transformación Digital

Informe ejecutivo principal: progreso vs. KPIs, salud de activos digitales (ST), estado de iniciativas y foco de inversión.

* [Plantilla de Informe de Portafolio](./presentacion/templates/plantilla_informe_portafolio.md)

## Parte 5: Gobernanza Continua y Modelo de Inversión

### 5.1. Cadencia de Gobernanza y Bucles de Control

La gobernanza es un diálogo de inversión rítmico. La RVC revisa la efectividad de bucles tácticos y escala decisiones estratégicas cuando no se cumplen SLOs.

### 5.2. Decisiones de Inversión

1. Continuar
2. Expandir
3. Reducir
4. Cerrar

### 5.3. Gobernanza de Datos y Conocimiento

Curación formal de fuentes para RAG: autoridad, vigencia y trazabilidad. Respuestas sin cita = fallo grave.

### 5.4. Gobernanza Proporcional al Riesgo (Risk Tiers)

* R1 (Bajo): Sistemas internos sin datos sensibles; bajo impacto.
* R2 (Medio): Datos personales no sensibles; importancia operativa.
* R3 (Alto): Datos sensibles/impacto legal o financiero; alto impacto público.

Implementación vía Políticas Computables:

* `politica_slo_por_riesgo.yaml`
* `politica_temperatura_llm.yaml`
* `POL-FINOPS-IA.yaml` (ADR-004)
* `POL-TRAZA-IA.yaml` (ADR-003)
* `POL-ABUSO-LLM.yaml`

### 5.5. Seguridad y Cumplimiento por Diseño

Zero‑Trust; acceso por ABAC/RBAC; auditoría en log inmutable.

### 5.6. Observabilidad y SRE Sociotécnico

Logs, métricas, trazas; SLOs con presupuestos de error que habilitan innovación responsable.

### 5.7. Gestión de la Cadena de Suministro Digital

Dependencias explícitas; contratos de suministro; monitoreo de salud para evitar fallos en cascada.

### 5.8. FinOps: Gestión de Costos y Valor

Etiquetado de costos de nube y tokens de IA por ST y capacidad de negocio para análisis costo‑valor.

## Parte 6: Anexos

### 6.1. Glosario (extracto)

* ADR (Registro de Decisión de Arquitectura): Documento corto y versionado que captura una decisión arquitectónica importante, su contexto y sus consecuencias.
* Agente Digital: Componente de software, a menudo dotado de IA, que realiza tareas de forma autónoma o colaborativa dentro de un Sistema de Trabajo.
* ASTA-SIGMA: Nombre del marco de trabajo integrado que fusiona los principios de Arquitectura Sociotécnica Adaptativa (ASTA) y la gobernanza computable (SIGMA).
* Bucle de Control: Mecanismo cibernético que usa un sensor (SLI) para medir el estado de un sistema, lo compara con un objetivo (SLO) y aplica una acción (actuador/guía operativa) para mantener la estabilidad.
* Cadencia (Cadence): Ritmo o frecuencia regular con la que se realizan ciertas actividades, como los bucles de gobernanza (ej. trimestral).
* CI/CD (Integración Continua / Despliegue Continuo): Prácticas de DevOps para automatizar la construcción, prueba y despliegue de software.
* Contrato Computable: Acuerdo formal y versionado (generalmente en formato YAML/JSON) que define las interacciones, expectativas y garantías entre componentes de un sistema. Es la base de la "Gobernanza como Código".
* EA-Ligera (EA-Lite): Filosofía de Arquitectura Empresarial que se enfoca en modelar lo mínimo necesario para entregar valor y gestionar el riesgo.
* FinOps: Disciplina que combina prácticas financieras con la ingeniería de la nube para gestionar y optimizar los costos.
* Gobernanza como Código: Práctica de definir y gestionar políticas y controles como código versionable y auditable.
* HCAI (IA Centrada en el Humano): Enfoque de diseño que prioriza las capacidades, necesidades y el control humano en el desarrollo de sistemas de IA.
* HITL (Humano-en-el-Bucle): Patrón de diseño donde un proceso autónomo de IA se detiene en puntos críticos para solicitar validación o decisión a un humano.
* KPI/OKR (Indicadores Clave de Rendimiento / Objetivos y Resultados Clave): Marcos para definir y medir el éxito estratégico y operativo.
* #NoProyectos (#NoProjects): Filosofía de gestión que organiza el trabajo en flujos de valor continuos operados por equipos estables, en lugar de proyectos con un inicio y fin definidos.
* PDCA (Planificar-Hacer-Verificar-Actuar): Ciclo iterativo de gestión para la mejora continua.
* RAG (Generación Aumentada por Recuperación): Patrón de IA donde un modelo de lenguaje basa sus respuestas en información recuperada de una base de conocimiento externa.
* ReAct (Razonar y Actuar): Patrón de agente de IA que combina el razonamiento con la capacidad de usar herramientas para recabar información e iterar hasta resolver un problema.
* RVC (Revisión de Valor y Capacidad): Ceremonia de gobernanza trimestral donde un equipo reporta el valor generado y justifica la inversión para el siguiente ciclo.
* SDA (Sentir-Decidir-Actuar): Ciclo cognitivo que describe cómo un agente (humano o IA) percibe información, toma una decisión y ejecuta una acción.
* Σ (Sigma): Símbolo que representa la Estructura de un sistema: su diseño y componentes estáticos.
* Δ (Delta): Símbolo que representa la Dinámica de un sistema: su operación y comportamiento en el tiempo.
* SLI (Indicador de Nivel de Servicio): Métrica específica que mide un aspecto del rendimiento de un servicio (ej. latencia).
* SLO (Objetivo de Nivel de Servicio): Meta numérica para un SLI (ej. 99.9% de disponibilidad).
* SRE (Ingeniería de Fiabilidad de Sitios): Disciplina de ingeniería para crear sistemas escalables y altamente fiables.
* ST (Sistema de Trabajo): Unidad de análisis que comprende personas, procesos y tecnología interactuando para cumplir un propósito.
* Zero-Trust (Confianza Cero): Modelo de seguridad que verifica cada solicitud como si se originara de una red no controlada.

### 6.2. Checklist de Adopción Rápida para Nuevas Iniciativas

1. [ ] `Ficha de ST` v0.1 creada.
2. [ ] Contratos (Datos, Agente, Proceso) v1.0 en Git.
3. [ ] 3 Espectros definidos por Agente Digital (propósito, autonomía, responsabilidad).
4. [ ] SLOs definidos por servicio.
5. [ ] Políticas y riesgos principales identificados.
6. [ ] Punto HITL definido si hay riesgo.
7. [ ] Dependencias externas y `Contratos de Suministro` definidos.
8. [ ] Instrumentación de logs, métricas y trazas planificada.

## Parte 7: Guías Prácticas de Aplicación

### 7.1. Iniciar una Nueva Iniciativa Digital

Objetivo: Llevar una idea a un MVP gobernado con ASTA‑SIGMA.

* Paso 1: Enmarcar con `Ficha de ST` v0.1 (propósito, actores, fricciones, KPIs).
* Paso 2: Diseñar arquitectura mínima con `Contratos` y `ADRs`.
* Paso 3: Construir primer incremento validando contratos en CI/CD.
* Paso 4: Operar y medir (SLIs/SLOs y presupuesto de error).

Resultado: Capacidad digital alineada a estrategia con gobernanza desde el día 1.

### 7.2. Modernizar un Sistema/Proceso Legacy

* Paso 1: Arquitectura inversa con `Ficha de ST` (AS‑IS).
* Paso 2: Documentar contratos implícitos (AS‑IS).
* Paso 3: Diseñar TO‑BE (SLOs, salvaguardas, bucles de control).
* Paso 4: Backlog incremental de modernización.

Resultado: Plan de modernización basado en cerrar brechas de capacidad y riesgo.

### 7.3. Diseñar un Proceso Inter‑Divisional

* Modelar cada participante como ST.
* Definir interacciones como servicios y contratos.
* Orquestar el flujo end‑to‑end con BPMN invocando servicios (no lógica de negocio).

Resultado: Proceso desacoplado, resiliente y gobernable.

### 7.4. Elaborar Términos de Referencia (TDR) y Evaluar Soluciones

* `Ficha de ST` para contexto y propósito.
* `Contratos` como requisitos técnicos/no funcionales (SLOs explícitos).
* `ADRs` como restricciones no negociables (ej.: OIDC).
* Criterios de aceptación: compatibilidad con ASTA‑SIGMA, cumplimiento de contratos y generación de evidencia operativa.

Resultado: Dossier de arquitectura ejecutable con evaluación objetiva de ofertas.
```

### productos/ASTA-SIGMA/Metodologia_ASTA-SIGMA.md

```markdown
# Manual de Operaciones del Marco ASTA-SIGMA

Versión: 2.0
Propósito: Este documento es el manual de operaciones prescriptivo para aplicar el marco ASTA-SIGMA. Detalla los procesos, roles, responsabilidades y ceremonias necesarias para gobernar el ciclo de vida completo de los Sistemas de Trabajo (ST), desde su concepción hasta su evolución continua.

---

## Parte 1: Fundamentos - El Modelo Mental de ASTA-SIGMA

### 1.1. Principio #1: De Proyectos a Flujos de Valor Continuos

El cambio fundamental es pasar de pensar en "proyectos" (con un inicio y un fin) a "Sistemas de Trabajo" (activos permanentes).

* Implicación Práctica: Los equipos no se disuelven tras un "lanzamiento". Se convierten en dueños a largo plazo del ST, responsables de su operación, salud y evolución. El financiamiento se asigna a equipos y flujos de valor, no a proyectos.
* Métrica Clave: El éxito no se mide por "On Time, On Budget", sino por el Valor Generado y el Tiempo de Ciclo (desde la idea hasta la entrega de valor).

### 1.2. Principio #2: El Ritmo de Doble Bucle (PDCA + RVC)

La operación se sincroniza en dos cadencias.

* Bucle Interno (Táctico - Semanas): El ciclo PDCA (Plan-Do-Check-Act) del equipo. Aquí es donde se aplica la agilidad (Scrum/Kanban) para la entrega incremental. El equipo tiene autonomía sobre el "cómo" implementa las funcionalidades.
* Bucle Externo (Estratégico - Trimestres): El ciclo de la Revisión de Valor y Capacidad (RVC). Esta es la ceremonia formal de gobernanza donde el equipo rinde cuentas sobre el "qué" valor ha generado y la gobernanza decide sobre la inversión futura.

### 1.3. Principio #3: Gobernanza como Código

La gobernanza no es un comité que aprueba documentos, sino un sistema automatizado que valida código.

* Implicación Práctica: Las reglas de negocio, los SLOs, las políticas de seguridad y los estándares de calidad se definen en `Contratos` y `Políticas` computables (ej. archivos YAML, schemas JSON). Estos artefactos se versionan en Git, **siguen un esquema canónico con claves en inglés para facilitar el tooling**, y son validados automáticamente en los pipelines de CI/CD.
* Beneficio: La conformidad se logra por diseño, no por auditoría posterior. Esto aumenta la velocidad y reduce el riesgo.

---

## Parte 2: Fase de Adopción Inicial - Creando la Línea Base Gobernada

Esta fase es obligatoria para cualquier nuevo ST o para un sistema existente que se incorpora al marco.

### 2.1. Paso 1: Taller de Diseño y Enmarcado del Sistema de Trabajo (ST)

* Objetivo: Lograr un entendimiento compartido y explícito del propósito, límites, riesgos y contexto del ST.
* Participantes (Roles Clave):
  * Product Owner / Líder de Negocio: Aporta la visión de negocio y los objetivos estratégicos.
  * Arquitecto / Líder Técnico: Define los límites técnicos y las dependencias.
  * Representante de Operaciones/SRE: Aporta la perspectiva de la operabilidad y la resiliencia.
  * Diseñador UX (si aplica): Representa la voz del usuario final.
* Proceso Detallado:
    1. Kick-off (1h): Presentar el desafío de negocio y los objetivos.
    2. Completar Ficha de ST (3h): Llenar colaborativamente cada sección de la `Ficha de Sistema de Trabajo`. Usar la plantilla como guía para la conversación, **asegurando cubrir las nuevas secciones de Interoperabilidad y Accesibilidad**.
    3. Análisis de Riesgo (1h): Aplicar la guía [GM-002_Evaluacion_Clasificacion_Riesgo_ST.md](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/guias_marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md:0:0-0:0). El resultado (Tier R1, R2, o R3) **debe** quedar registrado en la ficha. Este Tier determinará los controles de gobernanza aplicables.
    4. Definir SLOs Iniciales (1h): Basado en el Tier de Riesgo y las expectativas del negocio, definir un conjunto inicial de Objetivos de Nivel de Servicio (SLOs) para el ST.
* Criterios de Salida (Definition of Done):
  * ✅ `Ficha de ST` completada y versionada en el repositorio Git del equipo.
  * ✅ Tier de Riesgo asignado y documentado.
  * ✅ Lista inicial de SLOs definida en la ficha.

### 2.2. Paso 2: Autoevaluación de Madurez del Equipo

* Objetivo: Establecer una línea base honesta de las capacidades del equipo para identificar áreas de mejora.
* Participantes: Todo el equipo de flujo de valor.
* Proceso Detallado:
    1. Taller de Autoevaluación (2h): El equipo, facilitado por un Agile Coach o el Scrum Master, revisa la [Guia_Madurez_Equipos_Flujo_Valor.md](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/guias_marco/Guia_Madurez_Equipos_Flujo_Valor.md:0:0-0:0) y se puntúa en cada una de las dimensiones.
    2. Crear Hoja de Ruta de Mejora (1h): El equipo elige 1-2 prácticas de mejora del catálogo de la guía para enfocarse durante el próximo trimestre.
* Criterios de Salida:
  * ✅ Nivel de madurez (1, 2 o 3) documentado.
  * ✅ Hoja de ruta de mejora con acciones concretas para el siguiente ciclo.

### 2.3. Paso 3: Definición de Contratos de Interfaz v1.0

* Objetivo: Hacer explícitas todas las promesas que el ST hace a sus consumidores y las expectativas que tiene de sus dependencias.
* Participantes: Arquitecto, Líder Técnico, Product Owner.
* Proceso Detallado:
    1. Mapeo de Interfaces (2h): En una pizarra, dibujar el ST y todas sus conexiones entrantes y salientes (APIs, eventos, productos de datos, consumo de servicios de terceros).
    2. Redacción de Contratos (Iterativo): Para cada interfaz, crear un archivo de `Contrato Computable` (ej. `data_contract_v1.yaml`), **asegurándose de usar las claves canónicas en inglés**. Utilizar las plantillas correspondientes, **incluyendo el nuevo `Contrato de Servicio` para las APIs expuestas**.
* Criterios de Salida:
  * ✅ Un `Contrato Computable` versionado en Git por cada interfaz principal del ST.

---

## Parte 3: El Ciclo Operativo - Del Backlog a la Producción Gobernada

### 3.1. Bucle Interno (Táctico): Flujo de Trabajo del Equipo

1. Planificación del Sprint: El equipo planifica su trabajo. Si una historia de usuario implica un cambio en una interfaz, la actualización del `Contrato` es una tarea obligatoria en el sprint.
2. Diseño Emergente con ADRs: Para decisiones de arquitectura no triviales (ej. "adoptar Kafka para la comunicación asíncrona"), el equipo **debe** documentar la decisión en un `ADR (Architecture Decision Record)` usando la plantilla.
3. Desarrollo Guiado por Contratos: El desarrollador implementa el código.
4. Validación en el Pipeline (CI/CD): Este es el corazón de la "Gobernanza como Código". El pipeline de CI/CD **debe** incluir "gates" automatizados que:
    * **Validación de Esquemas:** Verifican que todos los artefactos (`Contratos`, `Políticas`) se adhieren a su JSON Schema canónico.
    * **Pruebas de Contrato de Servicio:** Ejecutan pruebas (ej. con Dredd/Prism) que validan que la implementación de una API cumple con su especificación OpenAPI, como se define en el `Contrato de Servicio`.
    * **Análisis de Políticas:** Escanean el código y los artefactos en busca de violaciones a las `Políticas Computables` (ej. [POL-FINOPS-IA.yaml](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/policies/POL-FINOPS-IA.yaml:0:0-0:0)).
    * **Pruebas de Seguridad y Calidad de IA:** Ejecutan las suites de pruebas definidas en [POL-ABUSO-LLM.yaml](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/policies/POL-ABUSO-LLM.yaml:0:0-0:0) y [GO-002](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/guias_operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md:0:0-0:0).
    * **Análisis de Accesibilidad:** Ejecutan herramientas automáticas (ej. Axe) contra las interfaces de usuario, como se exige en [GO-005](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/guias_operativas/GO-005_Diseno_UI.md:0:0-0:0).
    * **Un build roto por un gate de gobernanza detiene el despliegue.**
5. Monitoreo y Operación: El equipo utiliza las `Guías Operativas` (ej. `GO-002` para monitorear la calidad de un agente de IA) para la gestión diaria del ST en producción.

### 3.2. Bucle Externo (Estratégico): La Ceremonia de Revisión de Valor y Capacidad (RVC)

Esta es la ceremonia de gobernanza más importante del marco.

* Propósito: Sincronizar la estrategia con la ejecución, tomando decisiones de inversión basadas en evidencia.
* Cadencia: Trimestral.
* Participantes:
  * Presentadores: El Equipo de Flujo de Valor (PO, Tech Lead).
  * Audiencia / Decisores: Gobernanza (Arquitectura, FinOps, Seguridad, Líderes de Portafolio).
* Flujo de la Ceremonia (Agenda Tipo - 2h):
    1. Preparación (Asíncrona): El equipo completa la `plantilla_informe_portafolio.md`, recopilando métricas de:
        * Valor de Negocio: KPIs, OKRs.
        * Salud del Sistema: Cumplimiento de SLOs, deuda técnica.
        * Cumplimiento de Gobernanza: Violaciones de políticas, estado de los contratos.
    2. Presentación de Evidencia (45 min): El equipo presenta sus resultados del trimestre. El foco es en los datos y el aprendizaje.
    3. Diálogo y Análisis (45 min): La gobernanza hace preguntas para entender el contexto detrás de los números.
    4. Decisión de Inversión (30 min): La gobernanza delibera y comunica una de las cuatro decisiones para el ST para el próximo trimestre:
        * 🚀 Continuar/Pivotar: Mantener la inversión actual, ajustando el backlog según el aprendizaje.
        * 💰 Expandir: Aumentar la inversión debido a un alto retorno y oportunidad.
        * 📉 Reducir: Disminuir la inversión, poniendo el ST en modo de mantenimiento.
        * 🛑 Cerrar: Descontinuar el ST y reasignar al equipo a un flujo de valor de mayor impacto.
* Criterios de Salida:
  * ✅ Decisión de inversión para el siguiente trimestre comunicada y documentada.
  * ✅ Backlog estratégico del equipo actualizado para reflejar la decisión.

---

## Parte 4: Guías Prácticas (Recetas Metodológicas)

El [Marco_ASTA-SIGMA.md](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/Marco_ASTA-SIGMA.md:0:0-0:0) (Parte 7) contiene guías prácticas detalladas que actúan como recetas metodológicas para escenarios comunes:

* Receta A: Cómo Iniciar una Nueva Iniciativa Digital desde Cero: Sigue los pasos de la Fase de Adopción Inicial.
* Receta B: Cómo Modernizar un Sistema Existente: Se enfoca en la arquitectura inversa y la definición de un estado "TO-BE".
* Receta C: Cómo Diseñar un Proceso Inter-Organizacional: Utiliza los contratos como mecanismo para romper silos.
* Receta D: Cómo Elaborar un TDR y Evaluar Soluciones: Usa los artefactos de ASTA-SIGMA para crear TDRs basados en arquitectura y no en listas de funcionalidades.

---

## Anexos

A. Glosario de Términos Clave de la Metodología

*(Referencia al glosario en [Marco_ASTA-SIGMA.md](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/Marco_ASTA-SIGMA.md:0:0-0:0))*

B. Mapeo de Artefactos a Fases de la Metodología

| Fase Metodológica | Artefactos Clave Utilizados |
|---|---|
| Adopción Inicial | `Ficha de ST`, `GM-002`, `Guía de Madurez`, `Contratos Computables` |
| Bucle Interno (Táctico) | `ADRs`, `GM-003`, `Guías Operativas`, **`Contrato de Servicio`** |
| Bucle Externo (Estratégico) | `Revisión de Valor y Capacidad (RVC)`, `Ficha de Iniciativa` |
| Planificación Estratégica | `Ficha de Portafolio`, Plantillas de [presentacion](cci:7://file:///Users/felixsanhueza/fx_felixiando/plan_ai_gore/productos/ASTA-SIGMA/presentacion:0:0-0:0) |
```

### productos/ASTA-SIGMA/README.md

```markdown
# ASTA-SIGMA

Repositorio oficial para el sistema ASTA-SIGMA del plan de Transformación Digital y AI del Gobierno Regional de Ñuble (TDE GORE Ñuble).

## Estructura del repositorio

```
ASTA-SIGMA/
├── arquitectura/       # Documentos y diagramas de arquitectura
├── diseno_experiencia/ # Diseños de experiencia de usuario
├── guias_marco/        # Guías marco del sistema
├── guias_operativas/   # Guías operativas y procedimientos
├── policies/           # Políticas y gobernanza
├── portfolio/          # Portafolio de componentes
└── presentacion/       # Materiales de presentación
```

## Cómo contribuir

1. Clona el repositorio
2. Crea una rama para tu contribución (`git checkout -b mi-contribucion`)
3. Haz tus cambios y commitea (`git commit -am 'Agrega nueva funcionalidad'`)
4. Haz push a tu rama (`git push origin mi-contribucion`)
5. Abre un Pull Request en GitHub

## Requisitos

- Git 2.30+ 
- Cuenta GitHub autorizada

## Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).

```

### productos/ASTA-SIGMA/arquitectura/ADR-001_Patron_Validacion_Contratos_Datos.md

```markdown
# ADR-001: Patrón de Arquitectura de Referencia para la Validación de Contratos de Datos

- Fecha: 2025-09-15
- Estado: Propuesto

## Contexto

El marco ASTA-SIGMA establece el `Contrato de Datos` como un artefacto central para la "Gobernanza como Código". Este contrato define el esquema, las reglas de calidad, los SLOs y las políticas de seguridad de un `Producto de Datos`.

Para que este artefacto sea efectivo, su cumplimiento no puede depender de revisiones manuales. Es imperativo que las garantías definidas en el contrato sean validadas de forma automática y continua por nuestra plataforma de datos.

Este ADR define un patrón de arquitectura lógico que los equipos deben implementar para asegurar esta validación, garantizando que los datos que fluyen por la organización sean confiables y seguros por diseño.

## Decisión

Se establece un patrón de arquitectura de validación de `Contratos de Datos` compuesto por tres componentes lógicos que deben ser integrados en los pipelines de datos (CI/CD para datos):

1. **Validador de Esquema (Schema Validator):**
    - **Responsabilidad:** Verifica que la estructura de los datos (ej. columnas, tipos de datos, nulabilidad) se ajuste a la sección `esquema` del contrato.
    - **Punto de Actuación:** Debe actuar en el momento de la ingesta o escritura de datos. Un dato que no cumple con el esquema debe ser rechazado o derivado a una cola de excepciones.

2. **Motor de Calidad de Datos (Data Quality Engine):**
    - **Responsabilidad:** Ejecuta las reglas de negocio y lógicas definidas en la sección `calidad` del contrato (ej. `clave_unica`, `valores_en_rango`, `consistencia_referencial`).
    - **Punto de Actuación:** Puede actuar post-escritura, de forma asíncrona. Genera métricas sobre la calidad de los datos y puede gatillar alertas si se violan reglas de severidad `error`.

3. **Monitor de SLOs (SLO Monitor):**
    - **Responsabilidad:** Mide y reporta el cumplimiento de los Objetivos de Nivel de Servicio definidos en la sección `slo` del contrato (ej. `frescura_p95_minutos`, `disponibilidad_pct`).
    - **Punto de Actuación:** Opera de forma continua sobre los datos en reposo. Almacena un historial del rendimiento de los SLOs y alimenta dashboards de observabilidad. Es el responsable de calcular el consumo del `Presupuesto de Error` del producto de datos.

Estos componentes deben ser configurados y parametrizados directamente desde el `Contrato de Datos` versionado en Git, asegurando que cualquier cambio en la gobernanza se refleje automáticamente en la operación.

## Consecuencias

- **Positivas:**
  - **Confianza en los Datos:** Se establece un mecanismo robusto y automatizado para garantizar la fiabilidad de los datos en toda la organización.
  - **Gobernanza como Código Real:** La definición de la gobernanza (el contrato) está directamente acoplada a su ejecución (la validación), eliminando la brecha entre la política y la práctica.
  - **Detección Temprana de Problemas:** Los problemas de calidad y esquema se detectan de forma proactiva, reduciendo el impacto de los datos erróneos en los sistemas consumidores.
  - **Claridad para los Equipos:** Proporciona una guía de implementación clara para los ingenieros de datos sobre cómo construir pipelines de datos gobernados.

- **Negativas / Compromisos:**
  - **Inversión en Plataforma:** Requiere que la organización invierta en herramientas que puedan implementar estos componentes (ej. dbt, Great Expectations, Soda Core, o soluciones cloud nativas). No es una capacidad que se obtiene "gratis".
  - **Sobrecarga Inicial:** Introduce una sobrecarga computacional y de configuración inicial en los pipelines de datos. Es el costo de la confianza.
  - **Curva de Aprendizaje:** Los equipos necesitarán ser capacitados en estas herramientas y en la mentalidad de "Data Contract-driven development".

```

### productos/ASTA-SIGMA/arquitectura/ADR-002_Adopcion_MCP.md

```markdown
# ADR-002: Adopción de Model Context Protocol (MCP) para la Interacción con Herramientas de Agentes

- Fecha: 2025-09-16
- Estado: Propuesto

## Contexto

El marco ASTA-SIGMA, a través del `Contrato de Agente`, define que los `Agentes Digitales` pueden utilizar `herramientas` para interactuar con sistemas externos y realizar acciones. Sin embargo, el marco no prescribe el protocolo de comunicación específico para esta interacción.

Actualmente, cada integración de herramienta podría requerir un adaptador o conector a medida, llevando a una proliferación de integraciones frágiles, costosas de mantener y difíciles de gobernar. Para crear un ecosistema de capacidades escalable y desacoplado, es necesario un estándar de comunicación común entre los agentes (clientes) y las herramientas (servidores).

El Model Context Protocol (MCP) es un estándar de código abierto diseñado específicamente para este propósito, definiendo un protocolo JSON-RPC para que las aplicaciones de IA descubran, consuman y sean notificadas sobre herramientas, recursos y prompts.

## Decisión

Se establece el **Model Context Protocol (MCP) v2025-06-18** como el estándar obligatorio para todas las interacciones entre `Agentes Digitales` y `Herramientas` dentro del ecosistema del GORE Ñuble.

Esto implica que:

1. **Exposición de Herramientas:** Cualquier `Sistema de Trabajo` o servicio que exponga una capacidad para ser utilizada por un agente de IA (una `herramienta`) **debe** hacerlo a través de un endpoint de servidor MCP.
2. **Consumo de Herramientas:** Los `Agentes Digitales` desarrollados o adquiridos **deben** utilizar un cliente MCP para interactuar con dichas herramientas.
3. **Gobernanza:** El `Contrato de Suministro` de ASTA-SIGMA para una herramienta externa se considerará cumplido si el proveedor entrega un endpoint MCP conforme a la especificación. El `inputSchema` definido en la respuesta `tools/list` de MCP servirá como la especificación técnica computable de la herramienta.

## Consecuencias

- **Positivas:**
  - **Interoperabilidad y Reutilización:** Se crea un ecosistema de herramientas `plug-and-play`. Cualquier agente compatible con MCP puede, en teoría, consumir cualquier herramienta expuesta vía MCP, fomentando la reutilización y reduciendo el retrabajo.
  - **Reducción del Acoplamiento:** Los agentes no necesitan conocer los detalles de implementación de una herramienta, solo su interfaz MCP. Esto permite que las herramientas evolucionen de forma independiente.
  - **Simplificación del Desarrollo:** Los desarrolladores de agentes y herramientas pueden utilizar los SDKs de MCP, acelerando el desarrollo y asegurando el cumplimiento del protocolo.
  - **Gobernanza Mejorada:** Estandariza cómo se definen y descubren las capacidades, haciendo más fácil auditar qué herramientas están disponibles y cómo se están utilizando.

- **Negativas / Compromisos:**
  - **Curva de Aprendizaje:** Los equipos de desarrollo deberán aprender la especificación y los SDKs de MCP.
  - **Adherencia al Estándar:** Introduce una restricción tecnológica. Si un proveedor externo no soporta MCP, se requerirá el desarrollo de un "adaptador MCP" que envuelva la API del proveedor, lo cual representa un costo adicional.
  - **Dependencia de un Estándar Externo:** Aunque es de código abierto, la evolución del protocolo MCP está fuera del control directo del GORE Ñuble. Se deberá monitorear la comunidad y las actualizaciones del estándar.

```

### productos/ASTA-SIGMA/arquitectura/ADR-003_Estandar_Telemetria_OTel_IA_RAG.md

```markdown
# ADR-003: Estándar de Telemetría y Trazabilidad OTel para IA/RAG

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-01) reveló una brecha crítica en la gobernanza de IA: la falta de una trazabilidad forense *end-to-end* por transacción. Sin un estándar de telemetría, es imposible auditar decisiones sensibles, realizar análisis de causa raíz (RCA) de forma eficiente y mitigar riesgos legales asociados a las respuestas de los agentes de IA.

## Decisión

Se adopta OpenTelemetry (OTel) como el estándar obligatorio para la instrumentación de todos los flujos de trabajo que involucren agentes de IA. Se establece un esquema de telemetría prescriptivo (`Esquema_Telemetria_ASTA_OTel.md`) que define la nomenclatura de *spans* y los atributos obligatorios para cada etapa de un flujo de IA (ej. RAG, uso de herramientas, llamada a LLM).

Todo `Contrato de Agente` para sistemas de riesgo R2 o R3 debe exigir explícitamente el cumplimiento de este estándar. La validación de la cobertura y completitud de las trazas se integrará como un *gate* en los pipelines de CI/CD.

## Consecuencias

### Positivas

- **Auditabilidad Completa:** Cada decisión de un agente puede ser rastreada desde la solicitud del usuario hasta las fuentes de conocimiento consultadas.
- **RCA Acelerado:** El análisis de fallos (ej. alucinaciones, errores de cita) se simplifica drásticamente, permitiendo una depuración reproducible.
- **Gobernanza como Código:** El cumplimiento del estándar de telemetría se vuelve una condición verificable automáticamente, fortaleciendo la postura de GRC.

### Negativas

- **Sobrecarga de Instrumentación:** Requiere un esfuerzo inicial por parte de los equipos de desarrollo para instrumentar su código siguiendo el nuevo estándar.
- **Costo de Almacenamiento de Trazas:** La recolección de trazas detalladas aumentará los costos de la plataforma de observabilidad.

```

### productos/ASTA-SIGMA/arquitectura/ADR-004_Politica_FinOps_y_RateLimit_por_Tier.md

```markdown
# ADR-004: Política de FinOps y Rate-Limit por Tier de Riesgo

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-07) identificó que, si bien el marco describe conceptualmente la gestión de costos, carece de *guardrails* computables para controlar el gasto en IA. Sin presupuestos y límites automáticos, existe un riesgo financiero significativo de sobrecostos no controlados, especialmente con el uso de modelos de lenguaje a gran escala.

## Decisión

Se adopta una política de FinOps computable (`POL-FINOPS-IA.yaml`) como un artefacto obligatorio para la gobernanza de agentes de IA. Todo `Contrato de Agente` debe referenciar esta política. La política definirá:

1. **Presupuestos (Budgets):** Límites de gasto mensuales obligatorios por agente, tanto en tokens como en USD.
2. **Alertas Automáticas:** Notificaciones cuando el consumo del presupuesto alcance un umbral predefinido (ej. 80%).
3. **Auto-Throttle / Hard-Stop:** Mecanismos de *rate-limiting* o detención automática del servicio cuando se excede el presupuesto, con reglas diferenciadas por Tier de Riesgo (ej. un *hard-stop* para sistemas R1/R2, y un override con aprobación manual para sistemas críticos R3).

## Consecuencias

### Positivas

- **Control de Costos Proactivo:** Previene sobrecostos antes de que ocurran, en lugar de analizarlos de forma reactiva.
- **Visibilidad Financiera:** Proporciona una visión clara del costo operativo de cada agente de IA.
- **Sostenibilidad:** Asegura que el uso de la IA sea financieramente sostenible a largo plazo.

### Negativas

- **Riesgo de Interrupción del Servicio:** Un *hard-stop* podría interrumpir un servicio si el presupuesto no está bien dimensionado. Esto requiere un monitoreo cuidadoso y un proceso de ajuste de presupuesto ágil.
- **Complejidad de Implementación:** Requiere que la plataforma de observabilidad y el *API gateway* puedan implementar estas reglas de forma robusta.

```

### productos/ASTA-SIGMA/arquitectura/ADR-005_Estandar_Linaje_y_DQ_Computable.md

```markdown
# ADR-005: Estándar de Linaje y Calidad de Datos (DQ) Computable

- **Estado:** Aceptado
- **Fecha:** 2025-09-22

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-05) señaló que el `Contrato de Datos` actual, aunque define el esquema y los SLOs, carece de campos explícitos para el linaje, la retención y la base legal del procesamiento (DPIA/PIA). Esto crea una brecha en la gobernanza de datos, dificultando la auditoría y la gestión del ciclo de vida de los datos.

## Decisión

Se decide extender el `Contrato de Datos` para incluir campos obligatorios para:

1. **Linaje (`lineage`):** Referencias a las fuentes de datos de origen.
2. **Retención (`retention`):** Políticas de retención y expiración de los datos.
3. **Gobernanza (`governance`):** Base legal del procesamiento y referencia al DPIA/PIA.

Además, se establece que todo pipeline de CI/CD que gestione productos de datos de riesgo R2 o R3 debe incluir un *gate* de validación de calidad de datos (DQ) automatizado, utilizando herramientas como Great Expectations o Soda. El `Contrato de Datos` servirá como la fuente de verdad para estas validaciones.

## Consecuencias

### Positivas

- **Trazabilidad de Datos:** El linaje computable permite rastrear el origen y las transformaciones de cualquier producto de datos.
- **Cumplimiento Normativo:** La inclusión explícita de la base legal y la retención facilita las auditorías de cumplimiento (ej. Ley 19.628).
- **Calidad de Datos Verificable:** La calidad deja de ser declarativa y se convierte en una condición verificable en cada despliegue.

### Negativas

- **Complejidad Adicional:** Los equipos deben mantener y actualizar estos nuevos campos en sus contratos.
- **Costo de Herramientas de DQ:** La implementación de *gates* de calidad de datos puede requerir la adopción y mantenimiento de nuevas herramientas en el stack tecnológico.

```

### productos/ASTA-SIGMA/arquitectura/ADR-006_DR_Chaos_Obligatorio_Suministro.md

```markdown
# ADR-006: DR/Chaos como Obligación de Suministro

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-06) reveló que el `Contrato de Suministro`, si bien define un plan de contingencia básico, carece de garantías computables y demostrables sobre la resiliencia de los proveedores críticos. Una resiliencia meramente declarativa introduce un riesgo inaceptable en la cadena de suministro digital.

## Decisión

Se decide que para toda dependencia externa clasificada como crítica (que soporte un Sistema de Trabajo R2 o R3), el `Contrato de Suministro` debe incluir obligaciones explícitas y verificables de resiliencia. Esto incluye:

1. **Pruebas de Contingencia Periódicas:** Realización obligatoria de *game days* trimestrales para simular fallos (ej. usando técnicas de Chaos Engineering).
2. **RTO/RPO Contractuales:** Definición de Objetivos de Tiempo de Recuperación (RTO) y Objetivos de Punto de Recuperación (RPO) medibles y vinculantes.
3. **Garantías de Seguridad:** Requisito de presentar SBOM (Software Bill of Materials) y certificaciones de seguridad (ej. ISO 27001, SOC2).

La ejecución y los resultados de estas pruebas se documentarán en la `Guía Operativa GO-004` y se revisarán como parte de la RVC trimestral.

## Consecuencias

### Positivas

- **Resiliencia Demostrable:** La resiliencia de la cadena de suministro pasa de ser una suposición a una capacidad verificada.
- **Gestión de Riesgos Proactiva:** Permite identificar y mitigar puntos únicos de fallo en los proveedores antes de que causen un incidente real.
- **Relaciones Claras con Proveedores:** Establece expectativas claras y contractuales sobre la fiabilidad y seguridad de los servicios consumidos.

### Negativas

- **Mayor Carga de Gestión:** Requiere un esfuerzo adicional por parte de los equipos para coordinar, ejecutar y analizar los *game days* con los proveedores.
- **Posible Resistencia de Proveedores:** Algunos proveedores pueden ser reacios a comprometerse contractualmente con estas exigencias, lo que podría limitar las opciones de sourcing.

```

### productos/ASTA-SIGMA/arquitectura/Esquema_Telemetria_ASTA_OTel.md

```markdown
# Esquema de Telemetría ASTA-SIGMA con OpenTelemetry (OTel)

- **Versión:** 1.0
- **Propósito:** Definir los nombres de spans y atributos obligatorios para la instrumentación de flujos de IA, garantizando una trazabilidad consistente y auditable.

---

## 1. Atributos Globales (Resource Attributes)

*Estos atributos deben estar presentes en todas las trazas generadas dentro del marco.*

- `service.name`: Nombre del servicio (ej. `agente-preauditor-cgr`)
- `asta.st.id`: ID del Sistema de Trabajo (`ST-XXX`)
- `asta.agente.id`: ID del Agente (`AG-XXX`)

## 2. Flujo de Invocación de Agente RAG (Ejemplo)

*Una solicitud completa a un agente RAG debe generar una traza con la siguiente estructura de spans anidados.*

**Span Raíz: `agente.request`**

- **Atributos:**
  - `asta.trace.id`: ID de correlación único para la transacción completa.
  - `asta.user.id_pseudonym`: Identificador anonimizado del usuario.
  - `http.request.method`, `url.full`, `http.request.body.content`

  **↳ Span: `rag.pipeline`**
  - **Atributos:**
    - `rag.input.query`: La pregunta original del usuario.

    **↳ Span: `rag.retrieval`**
    - **Atributos:**
      - `rag.retrieval.k`: Número de documentos a recuperar.
      - `rag.retrieval.vector_db.vendor`: Proveedor de la base de datos vectorial.
      - `rag.retrieval.documents.count`: Número de documentos efectivamente recuperados.

    **↳ Span: `llm.generate`**
    - **Atributos:**
      - `llm.vendor`: Proveedor del modelo (ej. `openai`, `azure`).
      - `llm.request.model`: Nombre del modelo (ej. `gpt-4.1-mini`).
      - `llm.usage.input_tokens`, `llm.usage.output_tokens`
      - `llm.request.temperature`, `llm.request.top_p`
      - `llm.response.stop_reason`
      - `asta.cost.usd`: Costo estimado de la llamada al LLM.
      - `asta.ttft.ms`: Tiempo hasta el primer token (Time to First Token).

  **↳ Span: `agente.response`**

  - **Atributos:**
    - `http.response.status_code`
    - `asta.citations.count`: Número de citas en la respuesta.
    - `asta.citations.ids`: Lista de IDs de los documentos citados.
    - `asta.policy.hits`: Lista de políticas de seguridad que se activaron.
    - `asta.hitl.event`: Booleano que indica si se activó un evento de Humano-en-el-Bucle.

```

### productos/ASTA-SIGMA/arquitectura/Modelo_Referencia_Tecnico_OCE.md

```markdown
# Modelo de Referencia Técnico: Orquestación Cognitiva Empresarial (OCE)

- ID: ARQ-REF-001
- Versión: 1.0
- Fecha: 2025-09-16
- Relacionado a: `Marco_ASTA-SIGMA.md`

## Propósito y Relación con ASTA-SIGMA

Este documento sirve como el plano arquitectónico y el modelo de referencia técnico para la implementación de los `Sistemas de Trabajo` definidos y gobernados por el marco **ASTA-SIGMA**.

Mientras ASTA-SIGMA se enfoca en el **QUÉ** y el **PORQUÉ** (el diseño sociotécnico, la gobernanza, los contratos), este modelo de referencia se enfoca en el **CÓMO** (la plataforma, los componentes, los patrones de ingeniería).

Proporciona a los equipos de ingeniería y plataforma un vocabulario común y una arquitectura estandarizada para construir la infraestructura de IA del GORE Ñuble de manera robusta, escalable y alineada con los principios de gobernanza.

## Metamodelo de la Plataforma OCE

### Capas (Layers)

1. **Experiencia y Agentes** *(Experience & Agents)*: Copilotos, chatbots, asistentes, sistemas multi-agente.
2. **Orquestación** *(Orchestration Fabric)*: Motores de flujo de trabajo, motores de reglas, bus de eventos, gestión de compensaciones y reintentos.
3. **Modelos y Serving** *(Model Serving)*: LLMs, modelos de CV/NLP/tabulares, endpoints compatibles con OpenAI, batching continuo.
4. **Datos** *(Data Layer)*: Malla de datos, lakehouse, feature store, bases vectoriales, caché semántica, catálogos.
5. **Infraestructura**: Contenedores, Kubernetes, aceleradores (GPU), autoscaling, GitOps, Infraestructura como Código (IaC).
6. **Gobernanza y Seguridad**: Políticas como código, RBAC/ABAC, prevención de fuga de datos (DLP), auditoría.

### Ejes Transversales (Cross-cutting Concerns)

- **Integración:** APIs (REST, gRPC), eventos.
- **Automatización:** CI/CD, despliegues canary/blue-green.
- **Gestión del Ciclo de Vida:** Modelos, prompts, datos.
- **Observabilidad, Seguridad y Costos.**

## Contratos y Artefactos Técnicos

- **Contratos de API/Esquema**: OpenAPI/JSON Schema, AsyncAPI para eventos.
- **Herramientas (Tool/Function Calling)**: Funciones de negocio expuestas a LLMs con permisos y cuotas.
- **Políticas como Código**: OPA/Rego, Cedar.
- **Gestión de Prompts**: Registro centralizado, versionamiento, pruebas A/B.
- **Contratos de Datos**: Implementación técnica de los contratos definidos en ASTA-SIGMA, incluyendo linaje y SLOs de calidad/frescura.
- **Gestión de Modelos**: Registro de modelos, almacenamiento de artefactos, SBOM de imágenes.
- **Flujos de Trabajo (Workflows)**: DSL declarativa, claves de idempotencia, patrón Saga para transacciones distribuidas.

## Patrones de Orquestación

- **Pipelines**: ETL/ELT + RAG + post-procesamiento.
- **Multi-agente**: Router, Supervisor–Worker, Planner–Executor, Critic–Refiner, ReAct.
- **Compensaciones**: Patrón Saga, Outbox transaccional.
- **Humano-en-el-Bucle (HITL)**: Colas de aprobación/corrección, active learning.

## Gestión de Estado y Memoria

- **Corto Plazo**: Estado de sesión/conversación, contexto de herramientas.
- **Largo Plazo**: Bases de conocimiento, bases vectoriales, memoria de entidades con TTL.
- **Consistencia**: Event sourcing, CRDTs para colaboración multi-agente.
- **Privacidad**: Scoping por tenant, redacción de PII, cifrado en reposo y en tránsito.

## Arquitectura de la Capa de Datos

- **Data Mesh/Lakehouse** con zonas gobernadas (bronce, plata, oro).
- **Feature Store** para reutilización de variables; **Vector DB** para embeddings con búsqueda híbrida (densa + BM25).
- **Caché Semántica** de respuestas por hash de prompt+contexto.
- **Monitoreo de Calidad**: Herramientas tipo Great Expectations/Evidently, detección de deriva (drift) de datos y modelos.

## Serving de Modelos y Despliegue de LLMs

- **Contenedorización**: Imágenes con versiones fijadas, alineamiento de CUDA/cuDNN, escaneo de vulnerabilidades (Trivy/Grype).
- **Runtimes Optimizados**: vLLM, TGI, Triton, Ray Serve.
- **Endpoints**: Compatibles con OpenAI, streaming, rate limiting, colas y batching continuo.
- **Autoscaling**: Basado en métricas de GPU, longitud de cola, ocupación de batch; pre-calentamiento de instancias y escalado a cero.
- **Enrutamiento de Modelos**: Basado en políticas (costo, latencia, calidad), con fallbacks y tráfico sombra para pruebas.

## Seguridad y Cumplimiento

- **Mitigación de OWASP Top-10 para LLMs**: Inyección de prompts, exfiltración de datos, envenenamiento de datos de entrenamiento.
- **Zero-Trust**: mTLS, JWT/OIDC, WAF, políticas de red en Kubernetes.
- **Gestión de Secretos**: Integración con KMS, rotación, cifrado de sobre.
- **DLP/PII**: Detección, enmascaramiento, tokenización.
- **Guardrails (Barandas de Seguridad)**: Filtros de entrada/salida, listas de permisos/denegaciones, moderación de contenido.
- **Auditoría**: Logs inmutables.

## Observabilidad, Evaluación y Calidad

- **Trazabilidad**: OpenTelemetry para trazas distribuidas a través de flujos, herramientas y modelos.
- **Métricas Técnicas**: Latencia (p50/p95/p99), tiempo hasta el primer token (TTFT), throughput, utilización de GPU, tasa de acierto de caché.
- **Métricas de Negocio**: Costo por Resolución (CpR), costo por 1k tokens, tasa de automatización.
- **Métricas de Calidad de IA**: Fidelidad, tasa de alucinación, similitud de respuesta.
- **Arnés de Evaluación (Eval Harness)**: Conjuntos de datos de referencia (golden sets), evaluación humana, LLM-como-juez, pruebas de regresión.

## Gobierno y Costos (FinOps)

- **Presupuestos**: Definición de presupuestos y alertas por `Sistema de Trabajo`.
- **Unit Economics**: Análisis de costo por flujo de trabajo o por resolución.
- **Optimización**: Rightsizing de GPUs, uso de instancias spot/on-demand.
- **Catálogo Central**: Inventario de capacidades, datasets, modelos y prompts con dueños y políticas asociadas.

## Roadmap de Implantación Sugerido

1. **Descubrimiento**: Inventario de flujos y KPIs; `Contratos de Datos` mínimos.
2. **Arquitectura Base**: Kubernetes, serving de modelos compatible con OpenAI, base vectorial, motor de flujos, observabilidad.
3. **Piloto**: 1–2 flujos de trabajo con HITL, guardrails, arnés de evaluación y SLOs.
4. **Productivizar**: GitOps, políticas como código, registros de modelos y prompts, FinOps.
5. **Escalar**: Enrutamiento de modelos, fallbacks, auto-reparación, automatización de análisis de causa raíz.

```

### productos/ASTA-SIGMA/arquitectura/templates/ADR_template.md

```markdown
# ADR-XXX: [Título de la Decisión]

- Fecha: YYYY-MM-DD
- Estado: Propuesto / Aceptado / Reemplazado

## Contexto

*¿Cuál es el problema o la fuerza que nos lleva a tomar esta decisión?*

## Decisión

*¿Cuál es la decisión que tomamos?*

## Consecuencias

*¿Cuáles son los resultados positivos y negativos de esta decisión? ¿Qué compromisos aceptamos?*

```

### productos/ASTA-SIGMA/diseno_experiencia/plantilla_ficha_ux.md

```markdown
# Ficha de Experiencia de Usuario (UX): [Nombre del Servicio o Flujo]

- **ID de la Ficha:** UX-XXX
- **Asociada al Sistema de Trabajo:** `ST-XXX`
- **Fecha:** YYYY-MM-DD
- **Versión:** 1.0

---

## 1. Problema Fundamental y Usuarios Clave

### 1.1. Job-to-be-Done (JTBD)

*¿Cuál es el progreso que el usuario está tratando de hacer en su vida? ¿Qué 'trabajo' ha 'contratado' a nuestro servicio para hacer?*

- **Cuando...** [Situación/Contexto del usuario]
- **Quiero...** [Motivación/Objetivo del usuario]
- **Para poder...** [Resultado esperado/Beneficio final]

**Ejemplo:**

- **Cuando** estoy preparando la rendición de cuentas de un proyecto complejo,
- **Quiero** identificar rápidamente posibles errores o inconsistencias antes de enviarla,
- **Para poder** reducir la probabilidad de que sea observada por la CGR y evitar retrasos en el proyecto.

### 1.2. User Personas

*¿Quiénes son los arquetipos de usuarios para los que estamos diseñando?*

| Persona | Rol | Objetivos Clave | Frustraciones Clave |
|---|---|---|---|
| **[Nombre de la Persona]** | [Ej: Gestor Financiero de División] | Asegurar el cumplimiento y optimizar el tiempo administrativo. | Ambigüedad en la normativa y miedo a cometer errores. |
| **[Otra Persona]** | [Ej: Profesional de Terreno] | Reportar gastos de forma rápida y sencilla desde cualquier lugar. | Sistemas lentos y complejos, y falta de feedback inmediato. |

---

## 2. Flujo de Experiencia (User Journey)

*¿Cuáles son los pasos, pensamientos y emociones del usuario al interactuar con el servicio para completar su 'trabajo'?*

**Escenario:** [Describir el escenario específico del journey. Ej: Un gestor financiero pre-audita una rendición con el asistente de IA.]

| Paso del Usuario | Tarea Específica | Puntos de Contacto (Touchpoints) | Pensamientos / Preguntas del Usuario | Oportunidades de Mejora |
|---|---|---|---|---|
| **1. Descubrimiento** | El usuario se entera de que existe una nueva herramienta de asistencia. | Email informativo, notificación en el sistema. | "¿Esto es obligatorio? ¿Será difícil de usar?" | Comunicar claramente el beneficio y ofrecer un tutorial opcional. |
| **2. Inicio** | El usuario sube los documentos de la rendición al sistema. | Interfaz de carga de archivos. | "¿Qué formatos son compatibles? ¿Cuánto tardará esto?" | Dar indicaciones claras de formatos y mostrar una barra de progreso. |
| **3. Interacción** | El asistente procesa los documentos y presenta un resumen de hallazgos. | Dashboard de resultados, lista de observaciones. | "¿Puedo confiar en esta IA? ¿Cómo corrijo esto?" | Explicar cada hallazgo (explicabilidad) y enlazar a la normativa. |
| **4. Finalización** | El usuario corrige los problemas y genera la versión final para envío. | Botón "Generar Reporte Final", notificación de éxito. | "Espero que esto haya funcionado. Me siento más seguro ahora." | Ofrecer un resumen de las mejoras y permitir dar feedback. |

---

## 3. Métricas de Experiencia (HEART Framework)

*¿Cómo mediremos de forma cuantitativa la calidad de la experiencia del usuario?*

| Categoría | Objetivo | Métrica Clave (SLI) | Meta (SLO) |
|---|---|---|---|
| **Happiness (Felicidad)** | Los usuarios se sienten satisfechos y seguros usando el servicio. | - CSAT (Customer Satisfaction Score) post-interacción. | > 4.5 / 5 |
| **Engagement (Compromiso)** | Los usuarios utilizan el servicio de forma regular y profunda. | - % de rendiciones que pasan por el asistente. | > 80% |
| **Adoption (Adopción)** | Nuevos usuarios comienzan a utilizar el servicio. | - Tasa de activación de nuevos usuarios por mes. | > 15% mensual |
| **Retention (Retención)** | Los usuarios continúan utilizando el servicio a lo largo del tiempo. | - % de usuarios activos que regresan cada mes. | > 70% |
| **Task Success (Éxito de Tarea)** | Los usuarios pueden completar su 'trabajo' de forma eficiente y efectiva. | Tasa de finalización del flujo; Reducción en tasa de observaciones. | > 95%; Reducción del 50% |

```

### productos/ASTA-SIGMA/guias_marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md

```markdown
# Guía Metodológica: Evaluación y Clasificación de Riesgo de ST

- ID: GM-002
- Versión: 1.0
- Fecha: 2025-09-16
- Relacionado a: `politica_slo_por_riesgo.yaml`

## 1. Propósito

Esta guía proporciona un árbol de decisión simple para que los equipos de flujo de valor puedan auto-clasificar sus Sistemas de Trabajo (ST) en uno de los tres Tiers de Riesgo definidos en el marco ASTA-SIGMA. El objetivo es asegurar un proceso de clasificación consistente, objetivo y auditable.

La clasificación de riesgo es un paso obligatorio durante la creación de la `Ficha de Sistema de Trabajo` y determina los controles de seguridad, SLOs y requerimientos de gobernanza mínimos aplicables.

## 2. Proceso de Clasificación

Responda las siguientes preguntas en orden. La primera respuesta afirmativa determina el Tier de Riesgo del sistema.

### Pregunta 1: ¿El sistema cumple **alguna** de las siguientes condiciones?

- **Manejo de Datos Sensibles:** ¿Procesa, almacena o transmite datos personales sensibles (según Ley 19.628), datos financieros, o información estratégica clasificada como reservada?
- **Impacto Público Directo:** ¿Toma decisiones autónomas (o semi-autónomas) que afectan directamente los derechos, beneficios o servicios a los ciudadanos (ej. asignación de subsidios, evaluación de admisibilidad)?
- **Servicio Crítico Esencial:** ¿Una falla del sistema impediría a la institución cumplir una función esencial de cara a la ciudadanía o tendría un impacto reputacional severo e inmediato?

*   **SI → El sistema es `R3 (Alto Riesgo)`**. No continúe.
*   **NO → Continúe a la Pregunta 2.**

---

### Pregunta 2: ¿El sistema cumple **alguna** de las siguientes condiciones?

- **Manejo de Datos Personales:** ¿Procesa datos personales no clasificados como sensibles (ej. nombre, RUT, contacto)?
- **Importancia Operativa Interna:** ¿Es un sistema clave para la operación interna de una o más divisiones, y una falla prolongada degradaría significativamente la capacidad de los funcionarios para realizar su trabajo?
- **Integración con Múltiples Sistemas:** ¿Actúa como una fuente de verdad o un componente central para otros tres o más sistemas?

*   **SI → El sistema es `R2 (Medio Riesgo)`**. No continúe.
*   **NO → Continúe a la Pregunta 3.**

---

### Pregunta 3: Si respondió NO a todas las preguntas anteriores.

- El sistema es **`R1 (Bajo Riesgo)`**.

Esto generalmente aplica a sistemas internos de apoyo, herramientas de productividad de equipo, o sistemas que no manejan datos personales y cuyo impacto operativo es localizado.

## 3. Registro y Revisión

El Tier de Riesgo asignado **debe** ser registrado en la sección de Gobernanza de la `Ficha de Sistema de Trabajo`.

Esta clasificación no es permanente. Debe ser revisada y, si es necesario, actualizada en cada `Revisión de Valor y Capacidad (RVC)` trimestral, o cada vez que se introduzcan cambios significativos en la arquitectura o funcionalidad del sistema.

```

### productos/ASTA-SIGMA/guias_marco/GM-003_Playbook_Definicion_Contratos_Interfaz.md

```markdown
# Playbook: Definición y Negociación de Contratos de Interfaz

- ID: GM-003
- Versión: 1.0
- Fecha: 2025-09-16
- Audiencia: Equipos de Flujo de Valor, Arquitectos, Product Managers

## 1. Propósito y Principios

Los `Contratos Computables` son el pilar de la interoperabilidad en ASTA-SIGMA. Este playbook describe un proceso colaborativo para que dos equipos —un **Productor** (que expone un servicio o dato) y un **Consumidor** (que lo utiliza)— definan, acuerden y evolucionen un contrato de interfaz.

### Principios Clave

- **Contratos como Código:** Los contratos son artefactos YAML/JSON versionados en Git.
- **Diseño Impulsado por el Consumidor (Consumer-Driven):** El contrato debe satisfacer las necesidades del consumidor, no solo reflejar la implementación interna del productor.
- **Validación Automatizada:** El cumplimiento del contrato se verifica en el pipeline de CI/CD.

## 2. Roles

- **Equipo Productor:** Responsable de implementar, operar y mantener el servicio/dato y su contrato.
- **Equipo Consumidor:** Responsable de integrar y utilizar el servicio/dato según lo especificado en el contrato.

## 3. Flujo de Trabajo para un Nuevo Contrato

### Fase 1: Borrador (Propuesta del Productor)

1. **Acción (Productor):** El Equipo Productor crea un borrador inicial del contrato (`contrato-v0.1.yaml`) en una nueva rama de Git.
2. **Contenido:** El borrador debe incluir, como mínimo, la estructura básica, los campos de datos propuestos y los SLOs iniciales.
3. **Comunicación:** El Productor abre un *Pull Request* (PR) o *Merge Request* (MR) y asigna al líder técnico del Equipo Consumidor para su revisión.

### Fase 2: Revisión y Negociación (Colaboración)

1. **Acción (Consumidor):** El Equipo Consumidor revisa el PR. El objetivo es validar si el contrato propuesto satisface sus necesidades técnicas y de negocio.
2. **Feedback:** La discusión y negociación ocurren en los comentarios del PR. ¿Faltan campos? ¿Son los nombres claros? ¿Son los SLOs realistas y suficientes?
3. **Iteración:** El Productor actualiza el contrato basándose en el feedback, haciendo *commits* adicionales en la misma rama. Este ciclo se repite hasta que ambas partes están de acuerdo.

### Fase 3: Acuerdo y Fusión (Sello de Aprobación)

1. **Acción (Consumidor):** El líder técnico del Equipo Consumidor aprueba formalmente el PR.
2. **Acción (Productor):** El Equipo Productor fusiona el PR a la rama principal. El contrato se versiona como `v1.0.0`.
3. **Resultado:** El contrato es ahora oficial y representa un acuerdo vinculante entre los dos equipos.

## 4. Implementación y Validación Continua

- **Implementación (Ambos):** Ambos equipos utilizan el contrato `v1.0.0` como la especificación técnica para su trabajo de desarrollo.
- **Validación (Productor):** El pipeline de CI/CD del Productor debe incluir pruebas de contrato que verifiquen que su servicio cumple con las promesas del contrato (esquema, SLOs, etc.).
- **Validación (Consumidor):** El pipeline del Consumidor puede incluir pruebas contra un *mock* del servicio del productor, generado a partir del contrato.

## 5. Gestión de Cambios y Evolución

Los contratos evolucionarán. La gestión de cambios se rige por el **Versionado Semántico (SemVer)**.

- **Cambio No Disruptivo (Non-Breaking):**
  - *Ejemplo:* Añadir un nuevo campo opcional a una respuesta.
  - *Proceso:* El Productor puede realizar el cambio, incrementar la versión **MENOR** (ej. `v1.1.0`) y notificar al Consumidor. No se requiere un acuerdo formal.

- **Cambio Disruptivo (Breaking Change):**
  - *Ejemplo:* Renombrar un campo existente, eliminar un endpoint, cambiar el tipo de un dato.
  - *Proceso:* **Se debe iniciar el flujo de trabajo de negociación completo (Fases 1-3)**. El resultado será una nueva versión **MAYOR** del contrato (ej. `v2.0.0`).
  - **Ventana de Deprecación:** El Productor debe mantener la versión antigua del contrato funcionando por un período acordado (la `deprecation_window`) para dar tiempo al Consumidor a migrar.

```

### productos/ASTA-SIGMA/guias_marco/Guia_Madurez_Equipos_Flujo_Valor.md

```markdown
# Guía de Madurez para Equipos de Flujo de Valor

- ID: GG-001
- Versión: 1.0
- Fecha: 2025-09-15

## Propósito

El marco ASTA-SIGMA propone un cambio cultural desde una operación basada en "proyectos" a una basada en "flujos de valor continuos" operados por equipos estables y multidisciplinarios. Esta transición requiere que los equipos desarrollen nuevas capacidades y formas de trabajo.

Esta guía proporciona un modelo de madurez para ayudar a los equipos a autoevaluar su estado actual, identificar áreas de mejora y trazar un camino para operar de manera efectiva dentro del marco ASTA-SIGMA. El objetivo no es que todos los equipos alcancen el Nivel 3 en todas las dimensiones, sino que sean conscientes de sus capacidades y limitaciones.

## Modelo de Madurez

Se evalúan cuatro dimensiones clave a través de tres niveles de madurez.

**Dimensiones:**

1. **Propiedad y Autonomía:** ¿Quién toma las decisiones sobre el "qué" y el "cómo"?
2. **Flujo de Trabajo:** ¿Cómo se gestiona y entrega el trabajo?
3. **Enfoque en el Valor:** ¿Cómo se mide el éxito?
4. **Capacidades Técnicas:** ¿Cuán robustas son las prácticas de ingeniería?

## Niveles de Madurez

### Nivel 1: Equipo Orientado a Tareas (Task-Oriented)

*El equipo opera como un grupo de especialistas que recibe requerimientos detallados y se enfoca en completar tareas individuales.*

| Dimensión | Características Nivel 1 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El "qué" y el "cómo" son definidos externamente (jefatura, otra área).<br><br>- El equipo tiene poca o ninguna interacción con los usuarios finales.<br>- El Product Owner (si existe) actúa más como un gestor de proyectos o analista de requerimientos. |
| **Flujo de Trabajo** | - El trabajo se gestiona en silos funcionales (análisis, desarrollo, pruebas).
- La entrega de valor es infrecuente y en grandes lotes (despliegues mensuales o trimestrales).
- Fuerte dependencia de procesos de control de cambio (CAB) externos. |
| **Enfoque en el Valor** | - El éxito se mide por el cumplimiento de plazos y la entrega de funcionalidades (`output`).
- No existen métricas de valor público o de negocio (KPIs/OKRs), ni SLOs definidos. |
| **Capacidades Técnicas** | - El testing es mayormente manual y realizado al final del ciclo.
- No existe un pipeline de Integración Continua (CI).
- Los despliegues son manuales, riesgosos y requieren de coordinación extensiva. |

### Nivel 2: Equipo de Producto Emergente (Emerging Product)

*El equipo comienza a operar como una unidad cohesionada, con un entendimiento compartido del producto o servicio que construye y su impacto.*

| Dimensión | Características Nivel 2 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El equipo es dueño del "cómo" (decisiones técnicas), pero el "qué" (prioridades) aún es fuertemente influenciado externamente.<br><br>- El Product Owner está empoderado para gestionar el backlog.<br>- Hay interacción regular con los usuarios para obtener feedback. |
| **Flujo de Trabajo** | - El equipo es multifuncional y trabaja de forma colaborativa en un backlog unificado (Kanban/Scrum).
- Las entregas son más frecuentes (semanales/quincenales).
- El proceso de despliegue está parcialmente automatizado. |
| **Enfoque en el Valor** | - El éxito comienza a medirse por el impacto en el usuario y el negocio (`outcome`).
- Se definen y monitorean los primeros SLOs para los servicios críticos.
- Se realizan las primeras `Revisiones de Valor y Capacidad (RVC)`, aunque de forma incipiente. |
| **Capacidades Técnicas** | - Se implementa un pipeline de Integración Continua (CI) que automatiza la construcción y las pruebas unitarias.
- Se adopta el versionamiento de artefactos (código, contratos) en Git.
- Se comienzan a escribir pruebas automatizadas (unitarias, integración). |

### Nivel 3: Equipo de Flujo de Valor (Value Stream)

*El equipo opera como una unidad de negocio autónoma, dueña de su dominio de punta a punta, y está obsesionada con la optimización del flujo de valor hacia el ciudadano.*

| Dimensión | Características Nivel 3 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El equipo es dueño del "qué" y del "cómo". Tienen autonomía para descubrir y resolver los problemas de los usuarios dentro de su mandato (`Ficha de ST`).<br><br>- El Product Owner actúa como un "mini-CEO" del producto.<br>- La experimentación y el aprendizaje son parte central del proceso. |
| **Flujo de Trabajo** | - El equipo practica el Despliegue Continuo (CD). Las ideas pueden pasar a producción en días u horas.
- El equipo es dueño de la operación de su servicio en producción (`You build it, you run it`).
- El flujo de trabajo está optimizado para la velocidad y la seguridad. |
| **Enfoque en el Valor** | - El éxito se mide exclusivamente por el `outcome` (progreso de OKRs/KPIs) y el cumplimiento de SLOs.
- La `Revisión de Valor y Capacidad (RVC)` es un diálogo de inversión estratégico y basado en datos.
- El equipo gestiona activamente su `Presupuesto de Error` para balancear innovación y fiabilidad. |
| **Capacidades Técnicas** | - Prácticas de CI/CD maduras.
- Infraestructura como Código (IaC).
- Observabilidad profunda (métricas, logs, trazas) del sistema en producción.
- Los `Contratos Computables` son validados automáticamente en el pipeline. |

## 3. Herramienta de Autoevaluación de Madurez

Utilice el siguiente checklist en las retrospectivas trimestrales para evaluar el nivel de madurez actual del equipo. Marque la afirmación que mejor describa la realidad del equipo en cada dimensión.

#### Dimensión: Propiedad y Autonomía

- [ ] **Nivel 1:** El "qué" y el "cómo" son definidos externamente. El equipo tiene poca interacción con los usuarios finales.
- [ ] **Nivel 2:** El equipo es dueño del "cómo" (decisiones técnicas). El Product Owner gestiona el backlog y hay interacción regular con usuarios.
- [ ] **Nivel 3:** El equipo es dueño del "qué" y del "cómo". Tienen autonomía para descubrir y resolver problemas, y la experimentación es central.

#### Dimensión: Flujo de Trabajo

- [ ] **Nivel 1:** El trabajo se gestiona en silos. Las entregas son infrecuentes y en grandes lotes.
- [ ] **Nivel 2:** El equipo es multifuncional y trabaja de forma colaborativa. Las entregas son frecuentes (semanales/quincenales).
- [ ] **Nivel 3:** El equipo practica el Despliegue Continuo (CD). El flujo está optimizado para la velocidad y la seguridad.

#### Dimensión: Enfoque en el Valor

- [ ] **Nivel 1:** El éxito se mide por el cumplimiento de plazos (`output`). No hay SLOs ni KPIs de negocio.
- [ ] **Nivel 2:** El éxito se mide por el impacto (`outcome`). Se definen y monitorean los primeros SLOs.
- [ ] **Nivel 3:** El éxito se mide exclusivamente por OKRs/KPIs y SLOs. El equipo gestiona su Presupuesto de Error.

#### Dimensión: Capacidades Técnicas

- [ ] **Nivel 1:** El testing es manual. No hay pipeline de CI. Los despliegues son manuales y riesgosos.
- [ ] **Nivel 2:** Se implementa un pipeline de CI. Se adopta Git y se escriben pruebas automatizadas.
- [ ] **Nivel 3:** Prácticas de CI/CD maduras, Infraestructura como Código (IaC) y Observabilidad profunda. Los contratos se validan automáticamente.

## 4. Catálogo de Prácticas de Mejora

Una vez identificado el nivel actual, utilice este catálogo para construir una hoja de ruta de mejora.

**Para pasar de Nivel 1 a Nivel 2:**

1. **Técnico:** Implementar Git y un pipeline de CI básico. Empezar a escribir pruebas unitarias.
2. **Flujo:** Adoptar un tablero Kanban/Scrum unificado. Apuntar a entregas quincenales.
3. **Valor:** Realizar el `Taller de Diseño de ST` para definir los primeros SLOs. Crear un dashboard de monitoreo.
4. **Autonomía:** Empoderar al Product Owner para que sea la única fuente de priorización del backlog.

**Para pasar de Nivel 2 a Nivel 3:**

1. **Técnico:** Automatizar el despliegue a producción (CD). Implementar IaC. Instrumentar el código con telemetría (Observabilidad).
2. **Flujo:** Optimizar el pipeline para reducir el tiempo de ciclo (de commit a producción). Implementar guardias (`on-call`) para el servicio.
3. **Valor:** Definir `Presupuestos de Error` para los SLOs. Conectar las métricas del equipo a los OKRs de la organización. Iniciar prácticas de FinOps.
4. **Autonomía:** Delegar en el equipo la gestión de su `Presupuesto de Error` para balancear innovación y fiabilidad. Fomentar la experimentación.

```

### productos/ASTA-SIGMA/guias_operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md

```markdown
# Guía Operativa: Monitoreo Continuo de Calidad para Agentes de IA

- ID: GO-002
- Versión: 1.0
- Fecha: 2025-09-15
- Relacionado a: `Contrato de Agente`, `Contrato de Conocimiento`

## 1. Situación

El `Contrato de Agente` define SLOs críticos para la calidad de un agente de IA, tales como `slo_fidelidad` y `slo_precision_citas`. A diferencia de las métricas de infraestructura (ej. latencia), estas métricas de calidad no pueden ser monitoreadas con sondas tradicionales. Requieren un proceso robusto para evaluar continuamente el comportamiento del agente frente a un conjunto de verdades conocidas.

Esta guía describe el proceso y los componentes necesarios para implementar un sistema de monitoreo de calidad automatizado para agentes de IA, especialmente aquellos basados en RAG (Generación Aumentada por Recuperación).

## 2. Nivel de Madurez Asociado

La implementación completa de los procesos descritos en esta guía es característica de un equipo con un **Nivel de Madurez 2 (Equipo de Producto Emergente)** o superior, según la `GG-001 Guía de Madurez de Equipos`.

Específicamente, requiere:

- **Capacidades Técnicas (Nivel 2):** Un pipeline de Integración Continua (CI) donde se pueda ejecutar la evaluación automatizada.
- **Enfoque en el Valor (Nivel 2):** La definición y monitoreo de SLOs para servicios críticos.
- **Propiedad y Autonomía (Nivel 2):** Interacción regular con usuarios para obtener feedback que alimente el conjunto de datos de evaluación (vía HITL).

Un equipo de Nivel 1 puede comenzar a construir el `Conjunto de Datos de Evaluación` de forma manual como un primer paso hacia la madurez.

## 3. Componentes del Sistema de Monitoreo

La implementación se basa en tres componentes clave:

1. **Conjunto de Datos de Evaluación (Evaluation Dataset):** Una colección curada de preguntas, contextos y respuestas ideales que representan un "examen" para el agente.
2. **Pipeline de Evaluación Automatizada:** Un script o proceso de CI/CD que ejecuta el agente contra el conjunto de datos de evaluación y calcula las métricas de calidad.
3. **Dashboard de Calidad de IA:** Un panel de visualización que muestra la evolución de las métricas de calidad a lo largo del tiempo.

## 4. Proceso de Implementación Paso a Paso

### Paso 1: Crear y Mantener el Conjunto de Datos de Evaluación

Este es el activo más importante del proceso. Debe ser tratado como código y versionado en Git junto con el agente.

- **Estructura:** El conjunto de datos debe consistir en una lista de casos de prueba. Cada caso debe contener, como mínimo:
  - `id_caso`: Identificador único.
  - `pregunta`: La pregunta de prueba para el agente.
  - `contexto_esperado`: Fragmentos o IDs de los documentos que el agente *debería* recuperar para responder correctamente.
  - `respuesta_ideal`: Una o varias respuestas consideradas correctas y fieles al contexto.
- **Fuentes de Casos de Prueba:**
  - **Diseño Inicial:** Crear un conjunto base de preguntas que cubran los casos de uso más importantes y los escenarios límite.
  - **Feedback de HITL:** Cada vez que un humano corrige una respuesta del agente en la cola de `Humano-en-el-Bucle (HITL)`, esa interacción (pregunta, respuesta fallida, respuesta correcta) debe ser anonimizada y añadida como un nuevo caso de prueba. Esto convierte cada error en una prueba de regresión futura.
  - **Análisis de Logs:** Analizar las preguntas reales de los usuarios para identificar patrones y agregar ejemplos representativos.

### Paso 2: Construir el Pipeline de Evaluación Automatizada

Este pipeline debe ser parte del ciclo de Integración Continua (CI) del agente.

- **Disparador:** El pipeline debe ejecutarse en cada `commit` al código del agente o al conjunto de datos de evaluación.
- **Lógica del Pipeline:**
  1. **Ejecutar el Agente:** Para cada `pregunta` en el conjunto de datos de evaluación, invocar al agente y registrar su respuesta completa (la respuesta generada, los documentos recuperados, etc.).
  2. **Calcular Métricas de Recuperación (Retrieval):**
     - `Precisión de Contexto`: ¿El `contexto_recuperado` por el agente coincide con el `contexto_esperado`? (Métrica: Precisión/Recall/F1).
     - `slo_precision_citas`: ¿Las fuentes citadas por el agente están dentro del `contexto_recuperado`?
  3. **Calcular Métricas de Generación (Generation):**
     - `slo_fidelidad`: Usando un LLM como juez (LLM-as-a-Judge), comparar la `respuesta_generada` con el `contexto_recuperado`. El prompt para el LLM-juez sería: *"¿La siguiente respuesta se basa únicamente en la información proporcionada en el siguiente contexto? Responde SÍ o NO."*
     - `Similitud Semántica`: Comparar la `respuesta_generada` con la `respuesta_ideal` usando embeddings para obtener una puntuación de similitud.
  4. **Publicar Resultados:** Almacenar los resultados (las métricas calculadas para cada caso y los agregados) en una base de datos de series temporales o en un sistema de almacenamiento de artefactos.

### Paso 3: Visualizar y Alertar

- **Dashboard:** Crear un dashboard que muestre la evolución de las métricas clave (`slo_fidelidad`, `slo_precision_citas`, etc.) por cada ejecución del pipeline. Esto permite detectar regresiones en la calidad del agente visualmente.
- **Alertas:** Configurar alertas que se disparen si una ejecución del pipeline de evaluación resulta en una caída de las métricas por debajo de los umbrales definidos en el `Contrato de Agente`. Una caída significativa debe ser tratada como un `build` fallido y bloquear un despliegue a producción.

## 5. Respuesta a Incidentes (Fallo en el Pipeline de Calidad)

- **Detección:** Alerta automática del pipeline de CI/CD.
- **Respuesta Inmediata:**
  1. Bloquear el despliegue automático del agente (si se practica CD).
  2. El equipo de flujo de valor es notificado.
- **Análisis y Remediación:**
  1. Analizar los resultados del pipeline para identificar qué casos de prueba fallaron.
  2. Realizar un análisis de causa raíz: ¿Fue un cambio en el código del agente? ¿Un cambio en el modelo subyacente? ¿Un problema en los datos fuente?
  3. Corregir el problema y volver a ejecutar el pipeline hasta que pase.

Al seguir esta guía, los equipos pueden moverse de una evaluación de calidad de IA manual y esporádica a un monitoreo continuo, automatizado y robusto, tratando la calidad del agente con el mismo rigor que la calidad del código.

```

### productos/ASTA-SIGMA/guias_operativas/GO-003_Manual_Redaccion_Telegrafica.md

```markdown
# GO-003: Manual de Ensamblaje de Artefactos ASTA-SIGMA

- **ID:** GO-003
- **Versión:** 2.0
- **Propósito:** Proveer una guía de redacción exhaustiva y prescriptiva para cada campo de los artefactos ASTA-SIGMA, asegurando la máxima precisión, consistencia y computabilidad.

---

## 1. Antes de Empezar: Principios Fundamentales

| Principio | Descripción |
|---|---|
| **Estructura > Prosa** | La información debe ser descompuesta en los campos provistos. La narrativa es un anti-patrón. |
| **Verbo > Adjetivo** | Use verbos en infinitivo para propósitos y capacidades. Céntrese en acciones, no en cualidades. |
| **ID > Nombre** | La referencia a otros artefactos (`ST`, `CAP`, `KPI`) DEBE usar el ID. |
| **Consistencia** | Un concepto, un término. Consulte el glosario del marco. |
| **Cuantificación** | Las metas y resultados DEBEN ser numéricos y medibles. |

---

## 2. Instrucciones de Ensamblaje: Ficha de Sistema de Trabajo (ST)

### `propósitoYValorPublico`

- **Objetivo:** Responder: ¿Cuál es la función principal de este sistema y qué valor entrega a sus usuarios?
- **Formato:** Una sola frase. Inicia con verbo(s) en infinitivo. Describe la función y luego el beneficio.
- **Reglas Clave:**
  - **HACER:** Usar la fórmula: `[VERBO(s)] [QUÉ] para [BENEFICIO]`. Ser específico.
  - **NO HACER:** Usar prosa, adjetivos vagos ("eficiente", "robusto") o describir características técnicas.
- **Ejemplos:**
  - **MALO:** `Esta es la plataforma interna que usamos para los flujos. Es muy importante y eficiente.`
  - **REGULAR:** `Orquestar los flujos de trabajo del GORE.`
  - **BUENO:** `Orquestar, automatizar y hacer trazables los flujos de trabajo críticos del ciclo de IPR para aumentar la eficiencia y el cumplimiento.`

### `capacidadesOfrecidas`

- **Objetivo:** Declarar los servicios de alto nivel que este ST provee a otros ST dentro de la organización.
- **Formato:** Lista de objetos, cada uno con `id`, `nombre` y `descripcion`.
  - `id`: `CAP-[TEMA]-[NOMBRE_CORTO]`
  - `nombre`: `[Sustantivo] como Servicio`
- **Reglas Clave:**
  - **HACER:** Pensar en la capacidad como un producto interno. El nombre debe ser genérico y reutilizable.
  - **NO HACER:** Describir funcionalidades de bajo nivel o procesos internos.
- **Ejemplos:**
  - **MALO:** `nombre: Hacer mapas`
  - **REGULAR:** `nombre: Servicio de Datos Geoespaciales`
  - **BUENO:** `id: CAP-INT-TERRITORIAL`, `nombre: Inteligencia Territorial como Servicio`

### `dependenciasInternas`

- **Objetivo:** Crear el grafo de dependencias. Responder: ¿Qué capacidades de otros ST necesita este sistema para funcionar?
- **Formato:** Lista de strings, usando la fórmula: `Consume [ID_CAPACIDAD] de [ID_ST_PROVEEDOR] para [PROPÓSITO]`.
- **Reglas Clave:**
  - **HACER:** Usar los IDs exactos de la capacidad y del ST proveedor. Ser explícito en el propósito del consumo.
  - **NO HACER:** Usar nombres en lugar de IDs. Ser vago sobre la dependencia.
- **Ejemplos:**
  - **MALO:** `Necesita la IDE para los mapas.`
  - **REGULAR:** `Consume la capacidad de inteligencia territorial de la IDE Ñuble.`
  - **BUENO:** `Consume CAP-INT-TERRITORIAL de ST-IDE-NUBLE para mostrar mapas y alertas geolocalizadas.`

---

## 3. Instrucciones de Ensamblaje: Contrato de Agente (IA)

### `rol_delegado`

- **Objetivo:** Describir la tarea específica y acotada que se delega al agente de IA.
- **Formato:** Frase que inicia con un verbo. Debe ser una instrucción precisa, como en un manual de procesos.
- **Reglas Clave:**
  - **HACER:** Definir el alcance y los límites de la tarea. Mencionar la normativa o estándar de referencia si aplica.
  - **NO HACER:** Ser genérico o describir la función en términos de negocio amplios.
- **Ejemplos:**
  - **MALO:** `El agente revisa las rendiciones para ver si están bien.`
  - **REGULAR:** `Verificar la consistencia de los documentos de rendición.`
  - **BUENO:** `Pre-auditar documentos de rendición de cuentas para verificar su consistencia con la normativa (Res. 30 CGR) y las bases del proyecto.`

### `puntos_control_hitl` (Humano-en-el-Bucle)

- **Objetivo:** Definir las condiciones exactas bajo las cuales el agente DEBE detenerse y escalar a un humano.
- **Formato:** Lista de condiciones `if-then`.
- **Reglas Clave:**
  - **HACER:** Usar umbrales numéricos (ej. `puntuacion_confianza < 0.85`), eventos de negocio específicos o muestreos estadísticos.
  - **NO HACER:** Usar condiciones subjetivas como "si el agente no está seguro".
- **Ejemplos:**
  - **MALO:** `Cuando el agente tenga dudas.`
  - **REGULAR:** `Si se detecta una inconsistencia.`
  - **BUENO:** `Si el agente detecta una inconsistencia o posible observación.` Y `Para un muestreo aleatorio del 10% de los documentos validados como correctos.`

---

## 4. Instrucciones de Ensamblaje: Ficha de Iniciativa

### `description` (en `impactsSystemOfWork`)

- **Objetivo:** Describir el cambio de estado que esta iniciativa producirá en el ST afectado.
- **Formato:** Frase que inicia con un verbo. Describe la acción y el componente afectado.
- **Reglas Clave:**
  - **HACER:** Ser preciso sobre el cambio. Mencionar el ID del componente si es relevante (ej. un agente).
  - **NO HACER:** Describir las actividades del proyecto en lugar del impacto en el sistema.
- **Ejemplos:**
  - **MALO:** `Vamos a trabajar en el nuevo agente de IA.`
  - **REGULAR:** `Crear el agente de asistencia financiera.`
  - **BUENO:** `Implementa el agente ag_asistencia_financiera dentro del flujo de rendición de cuentas del ST-NEXO-GORE.`

### `definitionOfDone`

- **Objetivo:** Definir criterios de éxito medibles y no ambiguos. Responder: ¿Cómo sabremos que hemos terminado y tenido éxito?
- **Formato:** Lista de aserciones cuantificables que deben ser verdaderas.
- **Reglas Clave:**
  - **HACER:** Usar métricas, umbrales y resultados verificables. Cada criterio debe ser una prueba de aceptación.
  - **NO HACER:** Usar términos subjetivos ("funciona bien", "es satisfactorio", "está completo").
- **Ejemplos:**
  - **MALO:** `El agente funciona y los usuarios están contentos.`
  - **REGULAR:** `El agente detecta errores en las rendiciones.`
  - **BUENO:** `El agente ag_asistencia_financiera alcanza una precisión >95% en la detección de los 5 errores más comunes en el set de datos de prueba.`

---

*Este manual es de cumplimiento obligatorio. La calidad del portafolio de arquitectura depende de la aplicación rigurosa de estas reglas.*

```

### productos/ASTA-SIGMA/guias_operativas/GO-004_GameDays_Proveedores_y_DR.md

```markdown
# GO-004: Guía Operativa para Game Days de Proveedores y Pruebas de DR

- **ID:** GO-004
- **Versión:** 1.0
- **Fecha:** YYYY-MM-DD
- **Propietario:** [Rol/Equipo Responsable de SRE/Plataforma]

## 1. Propósito

Esta guía establece el protocolo estándar para la planificación, ejecución y análisis de *game days* (ejercicios de simulación de fallos) con proveedores de servicios críticos. El objetivo es verificar de forma proactiva la resiliencia de la cadena de suministro digital y validar los RTO/RPO definidos en los `Contratos de Suministro`.

## 2. Alcance

Este procedimiento aplica a todas las dependencias externas que soporten Sistemas de Trabajo clasificados como R2 (Medio Riesgo) o R3 (Alto Riesgo).

## 3. Protocolo del Game Day

### 3.1. Fase de Planificación (Semana -2)

1. **Seleccionar Escenario de Fallo:**
   - Ej: Caída total de la API del proveedor, latencia extrema (>5s), corrupción de datos en la respuesta.
2. **Definir Hipótesis y Métricas:**
   - **Hipótesis:** "Si la API de identidad cae, nuestro sistema activará el circuit breaker y operará con caché local durante 15 minutos sin que la disponibilidad del servicio `ST-XXX` caiga por debajo del 99.0%."
   - **Métricas a Medir:** Tiempo de detección (MTTD), Tiempo de mitigación (MTTM), RTO, RPO, % de errores de usuario.
3. **Coordinar con el Proveedor:** Agendar la ventana de prueba y definir los roles y canales de comunicación.

### 3.2. Fase de Ejecución (Día 0)

1. **Establecer Sala de Guerra (War Room):** Reunir a los ingenieros de SRE, el equipo de flujo de valor y el punto de contacto del proveedor.
2. **Verificar Estado del Sistema (Línea Base):** Confirmar que todos los sistemas operan normalmente antes de la prueba.
3. **Inyectar el Fallo:** Ejecutar la acción que simula el escenario de fallo.
4. **Monitorear y Medir:** Observar el comportamiento del sistema, medir los SLIs clave y registrar el cronograma de eventos.
5. **Finalizar la Prueba y Revertir:** Detener la inyección de fallos y asegurar que el sistema vuelve a su estado normal.

### 3.3. Fase de Análisis y Postmortem (Semana +1)

1. **Recopilar Datos:** Consolidar todas las métricas, logs y observaciones del equipo.
2. **Realizar RCA (Análisis de Causa Raíz):**
   - ¿Qué salió bien? ¿Qué salió mal?
   - ¿Se cumplió la hipótesis? ¿Se cumplieron los RTO/RPO contractuales?
3. **Generar Plan de Acción:** Crear un backlog de mejoras (ej. ajustar timeouts, mejorar alertas, modificar el plan de contingencia).
4. **Publicar Informe:** Documentar los hallazgos y el plan de acción en un informe estandarizado y compartirlo con los stakeholders.

```

### productos/ASTA-SIGMA/guias_operativas/GO-005_Diseno_UI.md

```markdown
# GO-005: Guía Operativa de Diseño de Interfaz de Usuario (UI)

- **ID:** GO-005
- **Versión:** 1.0
- **Propósito:** Establecer los principios y estándares mínimos para el diseño de todas las interfaces de usuario, asegurando consistencia, usabilidad y accesibilidad en el portafolio de aplicaciones.

---

## 1. Principios Fundamentales de UI

| Principio | Descripción |
|---|---|
| **Claridad sobre Abundancia** | La interfaz debe ser intuitiva y fácil de entender. Cada elemento debe tener un propósito claro. Evite la sobrecarga de información. |
| **Consistencia Interna y Externa** | Los componentes de UI deben comportarse de la misma manera en toda la aplicación (interna) y, siempre que sea posible, seguir los patrones establecidos por el sistema operativo o la plataforma web (externa). |
| **Feedback Inmediato** | El sistema debe informar al usuario lo que está sucediendo. Cada acción del usuario (un clic, un envío de formulario) debe tener una respuesta visible e inmediata (un spinner, un mensaje de éxito/error). |
| **Prevención de Errores** | Es mejor diseñar interfaces que eviten que los errores ocurran en primer lugar, que construir elaborados sistemas de recuperación de errores. Use confirmaciones para acciones destructivas. |
| **Accesibilidad por Defecto** | Todas las interfaces deben ser diseñadas para ser utilizables por el mayor número posible de personas, incluyendo aquellas con discapacidades. Esto no es una característica opcional, es un requisito. |

---

## 2. Sistema de Diseño y Componentes

- **Sistema de Diseño de Referencia:** [Ej: Se debe utilizar el Sistema de Diseño del Gobierno de Chile como base para todos los nuevos desarrollos. Link: https://diseno.gob.cl/]
- **Componentes Permitidos:**
  - **HACER:** Utilizar los componentes (botones, formularios, modales) definidos en el sistema de diseño de referencia siempre que sea posible.
  - **NO HACER:** Crear componentes personalizados si existe una alternativa estándar. Si un componente personalizado es absolutamente necesario, debe ser documentado y aprobado por el equipo de plataforma.

---

## 3. Estándares de Accesibilidad (WCAG 2.1 Nivel AA)

*El cumplimiento de estos estándares es obligatorio.*

- **Contraste de Color:** Todo el texto debe tener un ratio de contraste de al menos 4.5:1 con su fondo.
- **Texto Alternativo para Imágenes:** Todas las imágenes que transmitan información deben tener un atributo `alt` descriptivo.
- **Navegación por Teclado:** Todas las funcionalidades interactivas deben ser accesibles y operables utilizando solo el teclado.
- **Etiquetas en Formularios:** Todos los campos de formulario deben tener etiquetas (`<label>`) asociadas programáticamente.
- **Manejo de Foco:** El foco del teclado debe ser visible y moverse de una manera lógica a través de la página.

---

## 4. Checklist de Revisión de UI

*Antes de que una nueva interfaz o cambio sea aprobado para producción, debe pasar esta revisión.*

- [ ] **Claridad:** ¿Se entiende el propósito de la pantalla en menos de 5 segundos?
- [ ] **Consistencia:** ¿Los botones, colores y tipografías son consistentes con el resto de la aplicación y el sistema de diseño?
- [ ] **Feedback:** ¿Cada acción interactiva proporciona una respuesta clara al usuario?
- [ ] **Prevención de Errores:** ¿Las acciones destructivas (ej. eliminar) piden confirmación?
- [ ] **Accesibilidad:**
  - [ ] ¿El contraste de color cumple el ratio 4.5:1? (Usar un validador de contraste).
  - [ ] ¿Todas las imágenes tienen texto alternativo?
  - [ ] ¿Se puede navegar y operar toda la interfaz usando solo el teclado?
  - [ ] ¿Los campos de formulario están correctamente etiquetados?
- [ ] **Responsividad:** ¿La interfaz se visualiza y funciona correctamente en dispositivos móviles y de escritorio?

---

## 5. Validación Automatizada (CI/CD)

El cumplimiento de los estándares de accesibilidad no debe depender únicamente de la revisión manual. Es un requisito obligatorio integrar herramientas de análisis de accesibilidad automatizadas (como Axe o Pa11y) en el pipeline de Integración Continua (CI).

- **Gate de Calidad:** Un `build` para una rama de `release` **debe fallar** si el análisis automatizado detecta violaciones de accesibilidad de nivel crítico (WCAG Nivel A o AA).
- **Umbral de Aceptación:** El umbral de issues críticos aceptables es **cero**.

```

### productos/ASTA-SIGMA/guias_operativas/templates/GO_template.md

```markdown
# Guía Operativa: [Nombre de la Guía]

- ID: GO-XXX
- Versión: 1.0
- Fecha: YYYY-MM-DD

## 1. Situación

*Descripción del problema o escenario que esta guía aborda.*

## 2. Proceso de Respuesta

*Pasos detallados para manejar la situación, incluyendo acciones automatizadas y manuales.*

## 3. Roles y Responsabilidades

*Quién es responsable de cada paso del proceso.*

## 4. Análisis Post-Incidente

*Cómo aprender de la situación para mejorar el sistema a largo plazo.*

```

### productos/ASTA-SIGMA/policies/POL-ABUSO-LLM.yaml

```yaml
# Política Computable de Pruebas de Abuso para LLMs
id: POL-ABUSO-LLM
version: 1.0
status: active
date: '2025-09-22'

terms:
  - name: "Suite de Pruebas de Seguridad para Agentes LLM"
    policy:
      name: "Política de Pruebas de Abuso de LLM"
      description: "Establece la obligatoriedad de ejecutar pruebas de seguridad automáticas contra vulnerabilidades comunes en LLMs (OWASP LLM Top 10) para todos los agentes expuestos a usuarios."
      definition:
        min_test_cases: 200
        test_case_distribution: "Balanced across OWASP LLM Top 10 categories."
        corpus_requirements: "Must include public and private seed sets."
        drift_check_cadence: "quarterly"
        operational_guide_ref: "GO-002"
      rules:
        - id: "abuso-rule-001"
          name: "Ejecución de Suite Anti-Jailbreak"
          description: "Se debe ejecutar una suite de pruebas de seguridad (ej. inyección de prompts, exfiltración de datos) en el pipeline de CI/CD."
          condition: "agente.is_public_facing == true"
          evidenceRequired:
            - "El pipeline debe reportar un score de éxito >= 95% en la suite de pruebas de abuso, cumpliendo con los requisitos de corpus y distribución definidos."
            - "Un score inferior al umbral debe bloquear el despliegue a producción."

```

### productos/ASTA-SIGMA/policies/POL-FINOPS-IA.yaml

```yaml
# Política Computable de FinOps para Agentes de IA
id: POL-FINOPS-IA
version: 1.0
status: active
date: '2025-09-22'

terms:
  - name: "Reglas de FinOps para Agentes de IA"
    policy:
      name: "Política de Control de Costos y Presupuestos para IA"
      description: "Establece los límites de gasto, alertas y acciones automáticas para todos los agentes de IA, con reglas diferenciadas por Tier de Riesgo."
      definition:
        implementation_point: "API Gateway and Observability Platform"
        override_process_ref: "The manual override process for R3 systems must be documented in a GO."
      rules:
        - id: "finops-rule-001"
          name: "Presupuesto Mensual Obligatorio"
          description: "Todo agente debe tener un presupuesto definido en su Contrato."
          evidenceRequired:
            - "El campo `costos.budget_usd_mensual` en el Contrato de Agente debe ser > 0."
        - id: "finops-rule-002"
          name: "Alerta de Consumo de Presupuesto"
          description: "Se debe generar una alerta cuando el consumo del presupuesto mensual exceda el 80%."
          condition: "consumo_actual_usd / budget_usd_mensual >= 0.8"
          action: "Notificar al Equipo de Flujo de Valor y al Líder de FinOps."
        - id: "finops-rule-003"
          name: "Rate-Limit y Hard-Stop por Tier de Riesgo"
          description: "Acciones automáticas al exceder el 100% del presupuesto."
          rules_by_tier:
            R1_BAJO:
              action: "Activar hard-stop del servicio."
            R2_MEDIO:
              action: "Activar hard-stop del servicio."
            R3_ALTO:
              action: "Activar rate-limit severo y requerir aprobación manual para override."

```

### productos/ASTA-SIGMA/policies/POL-TRAZA-IA.yaml

```yaml
# Política Computable de Trazabilidad para Agentes de IA
id: POL-TRAZA-IA
version: 1.0
status: active
date: '2025-09-22'

terms:
  - name: "Cobertura de Telemetría OTel para IA/RAG"
    policy:
      name: "Política de Trazabilidad de IA"
      description: "Garantiza que todas las transacciones de agentes de IA de riesgo generen evidencia forense completa y auditable, según el estándar OTel definido en ADR-003."
      definition:
        coverage_formula: "ai_interactions_traced / ai_interactions_total"
        ai_interactions_total: "count(requests where component='agent' and outcome in ['ok','error'])"
        ai_interactions_traced: "count(requests with span_kind='client' and attributes contains ['ai.model','ai.tokens_in'])"
        min_coverage_pct_by_tier:
          R1_BAJO: 90
          R2_MEDIO: 95
          R3_ALTO: 98
        required_attributes:
          - ai.provider
          - ai.model
          - ai.tokens_in
          - ai.tokens_out
          - ai.ttft_ms
          - ai.rag.citations_count
          - ai.rag.retrieved_docs
      rules:
        - id: "traza-rule-001"
          name: "Cobertura de Trazas en Sistemas de Riesgo"
          description: "Los agentes en sistemas R2 y R3 deben tener una cobertura de trazas OTel completa."
          condition: "sistema.risk_tier in ['R2_MEDIO', 'R3_ALTO']"
          evidenceRequired:
            - "El pipeline de CI/CD debe demostrar una cobertura de spans OTel >= 95% para los flujos de IA."
            - "El `Contrato de Agente` debe tener el campo `telemetria.opentelemetry` en `true`."

```

### productos/ASTA-SIGMA/policies/politica_slo_por_riesgo.yaml

```yaml
# Politica de SLOs Minimos por Tier de Riesgo (v1.1 con IA/FinOps)
# Define los objetivos de fiabilidad, calidad y costo minimos que un servicio debe cumplir
# segun su clasificacion de riesgo. Es validado en el pipeline de CI/CD.

terms:
  - name: "SLOs por Tier de Riesgo"
    risk_tiers:
      R1_BAJO:
        disponibilidad_pct: 99.0
        latencia_p95_ms: 2500
        ttft_p95_ms: 1500
        tasa_error_max_pct: 5
        costo_1k_tokens_usd_max: 0.04
      R2_MEDIO:
        disponibilidad_pct: 99.5
        latencia_p95_ms: 1500
        ttft_p95_ms: 900
        tasa_error_max_pct: 2
        costo_1k_tokens_usd_max: 0.06
        fidelidad_min: 0.97
        precision_citas_min: 0.98
      R3_ALTO:
        disponibilidad_pct: 99.9
        latencia_p95_ms: 500
        ttft_p95_ms: 400
        tasa_error_max_pct: 1
        costo_1k_tokens_usd_max: 0.08
        fidelidad_min: 0.98
        precision_citas_min: 0.99
    error_budget:
      ventana_dias: 30
      accion_si_rojo: ["congelar despliegues", "A/B sombra", "postmortem obligatorio"]

```

### productos/ASTA-SIGMA/policies/politica_temperatura_llm.yaml

```yaml
id: POL-TEMP-LLM
version: 1.0
status: active
date: 'YYYY-MM-DD'

terms:
  - name: "Límites de Temperatura para Agentes LLM"
    policy:
      name: "Política de Control de Creatividad de LLM"
      description: "Establece un control de seguridad sobre la 'creatividad' (parámetro de temperatura) de los agentes de IA para mitigar el riesgo de alucinaciones en tareas sensibles."
      rules:
        - id: "temp-rule-001"
          name: "Límites de Temperatura por Tipo de Tarea"
          description: "Define la temperatura máxima permitida según la naturaleza de la tarea."
          task_types:
            operativa_normativa: # Tareas basadas en reglas y hechos (ej. consulta de leyes)
              temperatura_max: 0.2
              top_p_max: 0.7
            analisis_tactico: # Tareas que requieren resumen o sintesis (ej. analisis de reportes)
              temperatura_max: 0.5
              top_p_max: 0.9
            generacion_creativa: # Tareas de ideacion o borrador (ej. redaccion de discursos)
              temperatura_max: 0.8
              top_p_max: 1.0
        - id: "temp-rule-002"
          name: "HITL Obligatorio para Alta Creatividad"
          description: "Las tareas que permiten alta creatividad requieren supervisión humana obligatoria."
          condition: "task.temperatura > 0.5"
          evidenceRequired:
            - "El `Contrato de Agente` debe especificar una regla HITL para este escenario."

```

### productos/ASTA-SIGMA/portfolio/plantilla_ficha_portafolio.yaml

```yaml
# Ficha de Portafolio de Transformación
id: PORT-GORE-NUBLE-TD-2025
version: 1.0
status: active
date: 'YYYY-MM-DD'
owner: "Oficina de Transformación Digital"

portfolio:
  name: "Portafolio de Transformación Digital GORE Ñuble"
  vision: "Transformar al GORE Ñuble en una organización data-driven, ágil y centrada en el ciudadano, potenciada por capacidades digitales y de inteligencia artificial."

  # Pilares que guían la inversión y el esfuerzo
  strategicPillars:
    - id: "PILLAR-01"
      name: "Eficiencia Operacional Interna"
      description: "Optimizar y automatizar los procesos internos para reducir costos, tiempos de ciclo y errores."
    - id: "PILLAR-02"
      name: "Servicios al Ciudadano de Excelencia"
      description: "Crear canales digitales y servicios proactivos que mejoren la experiencia del ciudadano."
    - id: "PILLAR-03"
      name: "Liderazgo Territorial Basado en Datos"
      description: "Utilizar datos y analítica avanzada para mejorar la toma de decisiones en la planificación y gestión del territorio."

  # KPIs que miden el éxito del portafolio completo
  keyPerformanceIndicators:
    - id: "KPI-ORG-01"
      name: "Índice de Madurez Digital Organizacional"
      target: "Aumentar de 2.5 a 4.0 en 24 meses."
      pillar: "PILLAR-01"
    - id: "KPI-ORG-02"
      name: "Índice de Satisfacción Ciudadana (CSAT) con Canales Digitales"
      target: ">85%"
      pillar: "PILLAR-02"
    - id: "KPI-ORG-03"
      name: "% de Decisiones de Inversión Territorial Basadas en Evidencia de la IDE"
      target: ">70%"
      pillar: "PILLAR-03"

  # Inventario de los componentes del portafolio
  inventory:
    systemsOfWork:
      - id: "ST-NEXO-GORE"
        strategicPillar: "PILLAR-01"
      - id: "ST-MI-NUBLE"
        strategicPillar: "PILLAR-02"
      - id: "ST-IDE-NUBLE"
        strategicPillar: "PILLAR-03"
      - id: "ST-DATOS-ANALITICOS"
        strategicPillar: "PILLAR-03"
      - id: "ST-CIES-SEGURIDAD"
        strategicPillar: "PILLAR-02"

    initiatives:
      - id: "INIT-NUBLE-001"
        name: "Piloto Escudo CGR"
        strategicPillar: "PILLAR-01"
      - id: "INIT-NUBLE-002"
        name: "Piloto Agilizador de Convenios"
        strategicPillar: "PILLAR-01"

```

### productos/ASTA-SIGMA/presentacion/README.md

```markdown
# Módulo de Presentación ASTA-SIGMA

## 1. Propósito

Este módulo proporciona plantillas estandarizadas para traducir la "arquitectura como código" del marco ASTA-SIGMA en documentos de comunicación estratégica dirigidos a directivos, comités de gobernanza y otros stakeholders no técnicos.

El objetivo es asegurar que la información crítica sobre la arquitectura, el riesgo, el valor y la planificación se presente de manera:

- **Consistente:** Todos los informes y planes siguen la misma estructura.
- **Clara:** La información se presenta en un lenguaje orientado a la toma de decisiones.
- **Basada en Evidencia:** Cada sección del informe se deriva directamente de los artefactos versionados en el portafolio de arquitectura (Fichas de ST, Fichas de Iniciativa, etc.).

## 2. Plantillas Disponibles

### 2.1. Plan Maestro de Transformación Digital

- **Archivo:** `templates/plantilla_plan_maestro_transformacion.md`
- **Propósito:** Definir y comunicar el plan estratégico completo para la transformación digital de toda la organización.
- **Cuándo Usarlo:**
  - Al inicio de un programa de transformación a gran escala.
  - Como el documento rector para ser aprobado por la alta dirección.
  - Para alinear a todos los equipos y stakeholders bajo una única visión y hoja de ruta.

### 2.2. Informe de Arquitectura de Sistema de Trabajo

- **Archivo:** `templates/plantilla_informe_arquitectura.md`
- **Propósito:** Presentar una evaluación exhaustiva del estado actual de un Sistema de Trabajo (ST) existente.
- **Cuándo Usarlo:**
  - Para revisiones de salud trimestrales de sistemas críticos.
  - Antes de tomar una decisión de inversión importante sobre un sistema (ej. modernizar, expandir, retirar).
  - Como parte de una auditoría interna o externa.

### 2.3. Plan de Iniciativa Estratégica

- **Archivo:** `templates/plantilla_plan_iniciativa.md`
- **Propósito:** Articular el caso de negocio, alcance, plan y solicitud de recursos para una nueva iniciativa (proyecto, piloto).
- **Cuándo Usarlo:**
  - Para proponer una nueva iniciativa al comité de gobernanza.
  - Como el documento de "charter" o acta de constitución de un nuevo proyecto.
  - Para comunicar el plan de una iniciativa aprobada a todos los stakeholders.

## 3. Cómo Usar las Plantillas

1. **Copie la Plantilla:** No edite la plantilla directamente. Copie el archivo `.md` a una nueva ubicación para su informe o plan específico.
2. **Extraiga la Información de la Fuente de Verdad:** Rellene cada sección del documento utilizando la información contenida en los artefactos ASTA-SIGMA correspondientes (Fichas de ST, Fichas de Iniciativa, Contratos, etc.). Los comentarios en las plantillas indican qué campo de artefacto corresponde a cada sección.
3. **Añada el Análisis:** Las plantillas proporcionan la estructura. El valor se genera al añadir el análisis y las recomendaciones basadas en los datos extraídos. Por ejemplo, en el `Informe de Arquitectura`, no solo presente el SLO, sino también analice por qué está en rojo y qué impacto tiene en el negocio.
4. **Mantenga la Trazabilidad:** Siempre incluya los IDs de los artefactos (`ST-XXX`, `INIT-YYY`) en su documento para mantener un vínculo claro con la fuente de verdad de la arquitectura.

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_informe_arquitectura.md

```markdown
# Informe de Arquitectura: [Nombre del Sistema de Trabajo]

- **ID del Sistema:** `ST-XXX`
- **Fecha del Informe:** YYYY-MM-DD
- **Versión del Informe:** 1.0

---

## 1. Resumen Ejecutivo

*Esta sección está diseñada para ser leída en menos de 2 minutos. Debe ser autosuficiente.*

- **Propósito del Sistema:** [Extraer de `propósitoYValorPublico` de la Ficha de ST. Ej: Orquestar, automatizar y hacer trazables los flujos de trabajo críticos del ciclo de IPR...]
- **Estado General:** [Evaluar en una escala: `Saludable` / `Necesita Mejoras` / `En Riesgo`].
- **Hallazgos Clave:**
  - **Fortaleza Principal:** [Ej: El sistema cumple consistentemente su SLO de disponibilidad del 99.9%, asegurando la continuidad operacional.]
  - **Debilidad Principal:** [Ej: El sistema presenta una alta deuda técnica en su módulo de reportes, lo que genera un alto costo de mantención y lentitud en la generación de informes críticos.]
  - **Riesgo Principal:** [Ej: El sistema depende de una API externa sin un contrato de suministro formal, lo que representa un riesgo de disponibilidad no gestionado.]
- **Recomendación Principal:** [Ej: Se recomienda aprobar una iniciativa de modernización para el módulo de reportes con una inversión estimada de X para reducir el costo operativo en Y% en los próximos 6 meses.]

---

## 2. Contexto Estratégico y Valor de Negocio

*Esta sección conecta el sistema con los objetivos de la organización.*

- **Alineación Estratégica:**
  - **Objetivo Estratégico Principal:** [Extraer de `alineacionEstrategica` de la Ficha de ST.]
  - **Contribución a KPIs de Negocio:**
    - `KPI-XXX`: [Describir cómo el sistema impacta este KPI. Extraer de la Ficha de ST.]
    - `KPI-YYY`: [...]

- **Capacidades de Negocio que Realiza:**
  - `CE-XXX`: [Nombre de la Capacidad. Extraer de la Ficha de ST.]
  - `CE-YYY`: [...]

- **Capacidades Ofrecidas a la Organización:**
  - `CAP-XXX`: [Nombre de la Capacidad Ofrecida. Extraer de la Ficha de ST. Describir qué otros sistemas dependen de esta capacidad.]

---

## 3. Análisis de la Arquitectura y Operación

*Esta sección es el análisis técnico y sociotécnico detallado.*

### 3.1. Salud Operativa (Vista Δ)

| Métrica de Servicio (SLO) | Objetivo | Rendimiento Actual | Estado |
|---|---|---|---|
| Disponibilidad de `SV-XXX` | 99.5% | 99.92% | ✅ Verde |
| Latencia p95 de `SV-XXX` | < 500ms | 780ms | ❌ Rojo |
| Tasa de Error de `SV-YYY` | < 0.1% | 0.05% | ✅ Verde |

- **Análisis de SLOs:** [Comentar sobre el rendimiento. Ej: El sistema es altamente disponible, pero la latencia del servicio de consulta excede el objetivo, impactando negativamente la experiencia del usuario y el KPI de adopción.]
- **Gestión de Incidentes:** [Resumir incidentes significativos del último período. ¿Se respetaron los presupuestos de error?]

### 3.2. Estructura y Dependencias (Vista Σ)

- **Componentes Tecnológicos Clave:**
  - **Aplicaciones:** `AP-XXX`, `AP-YYY`
  - **Plataformas:** `PL-ZZZ`
- **Dependencias Internas:**
  - Consume `CAP-ABC` de `ST-OTRO-SISTEMA`: [Analizar la salud y criticidad de esta dependencia.]
- **Dependencias Externas:**
  - `DEP-001` (Proveedor X): [Analizar el riesgo de esta dependencia. ¿Existe un Contrato de Suministro? ¿Cuál es el plan de contingencia?]

### 3.3. Gobernanza, Riesgo y Cumplimiento

- **Mandato Regulatorio:** [Extraer de la Ficha de ST. Ej: Res. N° 30 CGR.]
- **Riesgos Principales Identificados:**
  - `RIESGO-001`: [Descripción del riesgo, impacto y probabilidad. ¿Existen controles para mitigarlo?]
- **Estado de Cumplimiento de Políticas:**
  - `POL-SEG-01`: [Cumple / No Cumple. Comentar sobre la evidencia.]

### 3.4. Análisis Sociotécnico

- **Actores Humanos y Digitales:** [Resumir los roles que interactúan con el sistema.]
- **Impacto en el Trabajo Humano:**
  - **Toma de Decisiones:** [¿El sistema asiste, aumenta o automatiza la toma de decisiones? ¿Es efectivo?]
  - **Comunicación y Coordinación:** [¿Cómo ha afectado el sistema la forma en que los equipos colaboran?]

---

## 4. Hoja de Ruta y Recomendaciones

*Esta sección define los próximos pasos accionables.*

- **Recomendación 1: [Título de la Recomendación. Ej: Modernizar Módulo de Reportes]**
  - **Justificación:** [Basado en los hallazgos. Ej: La alta deuda técnica genera un sobrecosto operativo de X y retrasa la entrega de informes críticos en un promedio de Y días.]
  - **Acciones Propuestas:**
    - [ ] Crear `Ficha de Iniciativa` para el proyecto de modernización.
    - [ ] Asignar equipo y presupuesto en el próximo ciclo de planificación.
  - **Impacto Esperado:** [Ej: Reducción del costo de mantención en un 30% y del tiempo de generación de informes a menos de 1 hora.]

- **Recomendación 2: [Título de la Recomendación. Ej: Formalizar Contrato con Proveedor Externo]**
  - **Justificación:** [El riesgo de disponibilidad de la dependencia `DEP-001` no está gestionado y podría causar una interrupción crítica del servicio.]
  - **Acciones Propuestas:**
    - [ ] Negociar y firmar un `Contrato de Suministro` con el proveedor que incluya SLAs claros.
    - [ ] Implementar el plan de contingencia (circuit breaker) definido en el contrato.
  - **Impacto Esperado:** [Mitigación del riesgo de disponibilidad y predictibilidad del servicio.]

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_informe_portafolio.md

```markdown
# Informe de Avance de la Transformación Digital

- **ID del Portafolio:** `PORT-GORE-NUBLE-TD-2025`
- **Período del Informe:** [Ej: Q3 2025]
- **Fecha del Informe:** YYYY-MM-DD

---

## 1. Resumen Ejecutivo: Estado de la Transformación

*Esta sección está diseñada para ser leída en menos de 3 minutos. Debe ser autosuficiente.*

- **Visión de la Transformación:** [Extraer de `portfolio.vision` de la Ficha de Portafolio.]
- **Estado General del Portafolio:** [Evaluar en una escala: `En Rumbo` / `Con Desviaciones Menores` / `En Riesgo`].
- **Avance Hacia los KPIs Organizacionales:**

| KPI Organizacional | Objetivo | Avance Actual | Estado |
|---|---|---|---|
| `KPI-ORG-01`: Madurez Digital | 4.0 en 24m | 2.8 | 🟡 En progreso |
| `KPI-ORG-02`: CSAT Digital | >85% | 75% | 🟡 En progreso |
| `KPI-ORG-03`: Decisiones Data-Driven | >70% | 55% | 🟡 En progreso |

- **Logro Principal del Período:** [Ej: El lanzamiento del piloto 'Escudo CGR' (`INIT-NUBLE-001`) validó la viabilidad de usar IA para reducir observaciones de CGR, un hito clave para el pilar de 'Eficiencia Operacional'.]
- **Principal Desafío del Período:** [Ej: Se ha detectado un retraso en la modernización del sistema `ST-XXX`, lo que pone en riesgo el cumplimiento del `KPI-YYY` para el próximo trimestre.]
- **Decisión Estratégica Requerida:** [Ej: Se solicita al comité de gobernanza priorizar la asignación de recursos para la modernización de `ST-XXX` o aceptar un ajuste en la meta del `KPI-YYY` para fin de año.]

---

## 2. Desempeño por Pilar Estratégico

*Esta sección evalúa el progreso en cada una de las grandes apuestas de la transformación.*

### Pilar 1: Eficiencia Operacional Interna

- **Estado:** ✅ En Rumbo
- **Análisis:** [Los Sistemas de Trabajo (`ST-NEXO-GORE`) e Iniciativas (`INIT-NUBLE-001`) asociados a este pilar están mostrando un buen progreso. Los pilotos de IA están validando las hipótesis de valor y se espera que su industrialización acelere el `KPI-ORG-01`.]

### Pilar 2: Servicios al Ciudadano de Excelencia

- **Estado:** 🟡 Con Desviaciones Menores
- **Análisis:** [El canal `ST-MI-NUBLE` ha mejorado su disponibilidad, pero la baja adopción de nuevos servicios está frenando el avance del `KPI-ORG-02`. Se necesita una iniciativa de gestión del cambio y marketing digital.]

### Pilar 3: Liderazgo Territorial Basado en Datos

- **Estado:** 🟡 Con Desviaciones Menores
- **Análisis:** [La plataforma `ST-IDE-NUBLE` está operativa, pero la calidad de los datos de origen sigue siendo un desafío. El `KPI-ORG-03` depende de mejorar la gobernanza de datos en toda la organización.]

---

## 3. Salud del Portafolio de Sistemas de Trabajo

*Esta sección consolida la salud de los activos digitales de la organización.*

| Sistema de Trabajo (ID) | Pilar Estratégico | Salud Operativa (SLOs) | Salud del Equipo | Deuda Técnica |
|---|---|---|---|---|
| `ST-NEXO-GORE` | Eficiencia Operacional | ✅ Verde | ✅ Verde | 🟡 Media |
| `ST-MI-NUBLE` | Servicios al Ciudadano | ✅ Verde | 🟡 Naranja | 🔴 Alta |
| `ST-IDE-NUBLE` | Liderazgo Territorial | 🟡 Naranja | ✅ Verde | 🟡 Media |

- **Análisis Consolidado:** [Ej: La mayoría de nuestros sistemas críticos están operativamente estables. Sin embargo, la alta deuda técnica en `ST-MI-NUBLE` representa un riesgo significativo y está consumiendo el 50% de la capacidad del equipo en mantenimiento no planificado, impidiendo la evolución del producto.]

---

## 4. Estado del Portafolio de Iniciativas

*Esta sección resume el estado de los proyectos de cambio.*

| Iniciativa (ID) | Pilar Estratégico | Estado | % Avance | Riesgos Clave |
|---|---|---|---|---|
| `INIT-NUBLE-001` | Eficiencia Operacional | ✅ En Rumbo | 100% (Completada) | N/A |
| `INIT-NUBLE-002` | Eficiencia Operacional | ✅ En Rumbo | 80% | Ninguno |
| `INIT-XXX-003` | Servicios al Ciudadano | 🔴 Retrasada | 30% | Dependencia externa bloqueante |

- **Análisis Consolidado:** [Ej: Las iniciativas del pilar de Eficiencia Operacional avanzan según lo planificado. La iniciativa `INIT-XXX-003` está bloqueada y requiere una intervención de la alta dirección para resolver la dependencia con el proveedor Z.]

---

## 5. Foco Estratégico para el Próximo Período

*Esta sección define las prioridades para el siguiente trimestre.*

- **Objetivo 1: [Ej: Mitigar la Deuda Técnica de `ST-MI-NUBLE`]**
  - **Justificación:** [Liberar la capacidad del equipo para enfocarse en la evolución del producto y mejorar el `KPI-ORG-02`.]
  - **Acción Clave:** [Lanzar una iniciativa de refactorización técnica con `Definition of Done` clara.]

- **Objetivo 2: [Ej: Industrializar el Piloto 'Escudo CGR']**
  - **Justificación:** [Capitalizar el éxito del piloto para empezar a capturar el valor a escala y mover el `KPI-ORG-01`.]
  - **Acción Clave:** [Crear la `Ficha de Iniciativa` para la fase 2 y asignarla al equipo correspondiente.]

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_plan_iniciativa.md

```markdown
# Plan de Iniciativa Estratégica: [Nombre de la Iniciativa]

- **ID de la Iniciativa:** `INIT-XXX-001`
- **Fecha del Plan:** YYYY-MM-DD
- **Versión del Plan:** 1.0

---

## 1. Resumen Ejecutivo y Solicitud

*Esta sección está diseñada para ser leída en menos de 2 minutos. Debe ser autosuficiente.*

- **Problema / Oportunidad:** [Describir brevemente la fricción de negocio o la oportunidad estratégica que esta iniciativa aborda.]
- **Solución Propuesta:** [Describir la iniciativa en una frase. Ej: Implementar un piloto de un asistente de IA (Pre-Auditor Inteligente) para reducir las observaciones en las rendiciones de cuentas.]
- **Impacto Estratégico:** [Resumir la contribución a los KPIs. Ej: Se proyecta una reducción del 50% en la tasa de observaciones (KPI-IPR-02) y un ahorro de 200 horas/hombre mensuales en revisiones manuales.]
- **Sistemas de Trabajo Impactados:** `ST-XXX`, `ST-YYY`
- **Solicitud:** [Declarar claramente lo que se solicita. Ej: Se solicita la aprobación para activar esta iniciativa, asignando al equipo 'Plataformas Internas' para su ejecución en el próximo trimestre (Q4 2025).]

---

## 2. Caso de Negocio y Alineación Estratégica

*Esta sección justifica la inversión en la iniciativa.*

- **Alineación con el Plan Estratégico:**
  - **Horizonte del Plan:** [Extraer de `strategicAlignment.planHorizon` de la Ficha de Iniciativa.]
  - **Contribución a KPIs de Negocio:**
    - `KPI-XXX`: [Describir en detalle cómo la iniciativa moverá este indicador. Cuantificar el impacto esperado.]

- **Justificación y Análisis Costo-Beneficio (Simplificado):**
  - **Costo Estimado:** [Ej: Esfuerzo de 1 equipo durante 1 trimestre.]
  - **Beneficio Esperado (Cuantitativo):** [Ej: Ahorro de costos, reducción de tiempo de ciclo, disminución de tasa de error.]
  - **Beneficio Esperado (Cualitativo):** [Ej: Mejora de la experiencia del funcionario, aumento de la capacidad de fiscalización, mitigación de riesgos.]

---

## 3. Alcance y Plan de Ejecución

*Esta sección detalla qué se hará y qué no se hará.*

### 3.1. Alcance de la Iniciativa

- **Descripción General:** [Extraer de `scope.description` de la Ficha de Iniciativa.]
- **Entregables Clave (In-Scope):**
  - [Extraer de `scope.inScope`.]
  - [...]
- **Fuera de Alcance (Out-of-Scope):**
  - [Extraer de `scope.outOfScope`.]
  - [...]

### 3.2. Criterios de Éxito (Definition of Done)

*¿Cómo sabremos que la iniciativa ha sido completada exitosamente?*

- [Extraer de `definitionOfDone` de la Ficha de Iniciativa. Deben ser criterios medibles y verificables.]
- [...]

### 3.3. Plan de Alto Nivel e Hitos

| Hito | Entregable Asociado | Fecha Estimada |
|---|---|---|
| **Hito 1:** Diseño y Prototipado | `Contrato de Agente` v1.0 definido | Semana 2 |
| **Hito 2:** Desarrollo del MVP | Agente `ag-XXX` funcional en entorno de pruebas | Semana 8 |
| **Hito 3:** Piloto Controlado | Pruebas con usuarios de la DAF completadas | Semana 11 |
| **Hito 4:** Cierre y Reporte | Informe de resultados del piloto generado | Semana 12 |

---

## 4. Impacto en la Arquitectura y Gobernanza

*Esta sección describe cómo la iniciativa cambia la organización.*

- **Sistemas de Trabajo Impactados:**
  - `ST-XXX`: [Extraer de `impactsSystemOfWork`. Describir el cambio de estado que producirá la iniciativa en este sistema.]
  - `ST-YYY`: [...]

- **Riesgos y Mitigaciones:**
  - **Riesgo 1:** [Ej: Baja adopción por parte de los usuarios.]
    - **Mitigación:** [Ej: Involucrar a los usuarios finales desde las primeras etapas de diseño y realizar capacitaciones.]
  - **Riesgo 2:** [Ej: El modelo de IA no alcanza la precisión requerida.]
    - **Mitigación:** [Ej: Definir un umbral de precisión claro en la `Definition of Done` y usar un set de datos de validación robusto.]

- **Equipo Responsable:**
  - **Equipo de Flujo de Valor:** [Extraer de `owner.team` de la Ficha de Iniciativa.]

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_plan_maestro_transformacion.md

```markdown
# Plan Maestro de Transformación Digital: [Nombre de la Organización]

- **Período de Vigencia:** [Ej: 2025-2028]
- **Fecha de Aprobación:** YYYY-MM-DD
- **Versión:** 1.0

---

## 1. Visión y Dirección Estratégica

*Esta sección establece el 'porqué' de la transformación.*

- **Declaración de Visión:** [Extraer de `portfolio.vision` de la Ficha de Portafolio. Ej: Transformar al GORE Ñuble en una organización data-driven, ágil y centrada en el ciudadano...]
- **Contexto y Desafío Estratégico:** [Describir el contexto actual de la organización y por qué la transformación es una necesidad imperativa. Ej: La creciente demanda ciudadana por servicios digitales eficientes y la necesidad de tomar decisiones de inversión pública basadas en evidencia requieren una modernización profunda de nuestras capacidades...]
- **Principios Rectores de la Transformación:**
  - [Principio 1: Ej: Valor Público sobre la Tecnología.]
  - [Principio 2: Ej: Evolución Iterativa sobre Grandes Proyectos.]
  - [Principio 3: Ej: Gobernanza como Código para la Transparencia y Agilidad.]

---

## 2. Pilares Estratégicos y Resultados Clave

*Esta sección desglosa la visión en áreas de foco medibles, basado en la Ficha de Portafolio.*

| Pilar Estratégico (ID) | Descripción | KPI Organizacional Asociado (ID) |
|---|---|---|
| `PILLAR-01`: Eficiencia Operacional | [Descripción del pilar] | `KPI-ORG-01`: Madurez Digital |
| `PILLAR-02`: Servicios al Ciudadano | [Descripción del pilar] | `KPI-ORG-02`: CSAT Digital |
| `PILLAR-03`: Liderazgo Territorial | [Descripción del pilar] | `KPI-ORG-03`: Decisiones Data-Driven |

---

## 3. Hoja de Ruta de la Transformación por Horizontes

*Esta sección presenta el plan de ejecución secuenciado en horizontes de tiempo, mostrando cómo se construirán las capacidades de forma incremental.*

### Horizonte 1: Fundación y Victorias Tempranas (Próximos 6 Meses)

- **Foco:** [Ej: Establecer las plataformas base, entregar valor visible rápidamente y demostrar la viabilidad del nuevo modelo operativo.]
- **Iniciativas Clave:**
  - `INIT-NUBLE-001`: Piloto Escudo CGR
  - `INIT-NUBLE-002`: Piloto Agilizador de Convenios
  - `INIT-XXX-003`: Implementación de la Plataforma de Datos (`ST-DATOS-ANALITICOS`)
- **Capacidades a Desarrollar:** [Ej: Gobernanza de IA, Ingesta de Datos, Automatización de Procesos Simples.]

### Horizonte 2: Escalado y Expansión (6 a 18 Meses)

- **Foco:** [Ej: Expandir el uso de las plataformas base a más procesos, industrializar los pilotos exitosos y lanzar los primeros servicios digitales proactivos al ciudadano.]
- **Iniciativas Clave (Ejemplos):**
  - `INIT-XXX-004`: Industrialización del Asistente de Rendiciones
  - `INIT-XXX-005`: Lanzamiento del portal `Mi Ñuble` v1.0 (`ST-MI-NUBLE`)
- **Capacidades a Desarrollar:** [Ej: Desarrollo de Productos Digitales, Operaciones de IA (MLOps), Autoservicio de Datos.]

### Horizonte 3: Optimización y Liderazgo (18 a 36 Meses)

- **Foco:** [Ej: Utilizar la analítica avanzada para optimizar los servicios, personalizar la experiencia ciudadana y consolidar el rol de liderazgo territorial del GORE basado en datos.]
- **Iniciativas Clave (Ejemplos):**
  - `INIT-XXX-006`: Implementación del Observatorio 360 (Analítica Predictiva)
  - `INIT-XXX-007`: Personalización Proactiva de Servicios en `Mi Ñuble`
- **Capacidades a Desarrollar:** [Ej: Ciencia de Datos Aplicada, Diseño de Experiencia Ciudadana (CX), Gobernanza de Ecosistemas Digitales.]

---

## 4. Modelo de Inversión y Gobernanza

- **Modelo de Financiamiento:** [Describir cómo se financiará la transformación. Ej: Se propone un modelo de financiamiento por 'tranches' trimestrales, condicionado al cumplimiento de los hitos y a los resultados de las Revisiones de Valor y Capacidad (RVC).]
- **Estimación de Inversión por Pilar:**
  - **Pilar 1 (Eficiencia):** XX% del presupuesto total.
  - **Pilar 2 (Ciudadanía):** YY% del presupuesto total.
  - **Pilar 3 (Territorio):** ZZ% del presupuesto total.
- **Modelo de Gobernanza:**
  - **Comité de Transformación Digital:** [Definir su composición y mandato.]
  - **Cadencia de Revisión:** [Ej: El avance del plan se revisará trimestralmente en el comité, utilizando el `Informe de Avance de la Transformación Digital` como insumo principal.]

---

## 5. Riesgos Estratégicos

| Riesgo | Impacto Potencial | Estrategia de Mitigación |
|---|---|---|
| **Resistencia al Cambio Organizacional** | Alto | Implementar un plan de gestión del cambio robusto, con comunicación constante, capacitación y co-diseño con los funcionarios. |
| **Baja Calidad de los Datos de Origen** | Alto | Priorizar iniciativas de gobernanza y calidad de datos en el Horizonte 1. Nombrar 'dueños de datos' en cada división. |
| **Dependencia de Proveedores Clave** | Medio | Diversificar proveedores cuando sea posible y formalizar todas las dependencias críticas a través de `Contratos de Suministro` con SLAs claros. |

```

