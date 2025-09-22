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