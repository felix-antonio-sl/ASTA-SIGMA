# ASTA-SIGMA

## Project Structure

```
ASTA-SIGMA
├── 00-overview
│   └── INDEX.md
├── 01-manual
│   └── MANUAL_ASTA-SIGMA.md
├── 02-artefactos
│   ├── contratos
│   │   ├── schemas
│   │   │   └── service_contract.schema.json
│   │   └── templates
│   │       └── TPL-SVC-001_Service_Contract.yaml
│   ├── modelos
│   │   └── Modelo_Referencia_Tecnico_OCE.md
│   ├── portafolio
│   │   └── TPL-PORT-001_Ficha_Portafolio.yaml
│   ├── presentacion
│   │   ├── templates
│   │   │   ├── plantilla_informe_arquitectura.md
│   │   │   ├── plantilla_informe_portafolio.md
│   │   │   ├── plantilla_plan_iniciativa.md
│   │   │   └── plantilla_plan_maestro_transformacion.md
│   │   └── README.md
│   ├── telemetria
│   │   └── Esquema_Telemetria_ASTA_OTel.md
│   ├── ux
│   │   └── TPL-UX-001_Plantilla_Ficha_UX.md
│   ├── Matriz_Gobernanza_CI.md
│   └── README.md
├── 03-guias
│   ├── marco
│   │   ├── GM-001_Guia_Madurez_Equipos_Flujo_Valor.md
│   │   ├── GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
│   │   └── GM-003_Playbook_Definicion_Contratos_Interfaz.md
│   ├── operativas
│   │   ├── GO-002_Monitoreo_Calidad_Agentes_IA.md
│   │   ├── GO-003_Manual_Ensamblaje_Artefactos.md
│   │   ├── GO-004_GameDays_Proveedores_y_DR.md
│   │   └── GO-005_Diseno_UI.md
│   └── templates
│       └── GO_template.md
├── 04-adrs
│   ├── core
│   │   ├── ADR-core-101_Patron_Validacion_Contratos_Datos.md
│   │   ├── ADR-core-102_Adopcion_MCP.md
│   │   ├── ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md
│   │   ├── ADR-core-104_Politica_FinOps_y_RateLimit_por_Tier.md
│   │   ├── ADR-core-105_Estandar_Linaje_y_DQ_Computable.md
│   │   └── ADR-core-106_DR_Chaos_Obligatorio_Suministro.md
│   ├── tde
│   │   ├── ADR-tde-201_Integracion_Plataformas.md
│   │   └── ADR-tde-202_Calidad_Plataformas_e_Indisponibilidad.md
│   └── ADR_template.md
├── 05-policies
│   ├── POL-ABUSO-LLM.yaml
│   ├── POL-FINOPS-IA.yaml
│   ├── POL-TRAZA-IA.yaml
│   ├── politica_slo_por_riesgo.yaml
│   └── politica_temperatura_llm.yaml
├── 06-overlay-tde-cl
│   ├── artefactos
│   │   └── Modelo_Referencia_Tecnico_OCE_TDE-CL.md
│   ├── ci
│   │   └── validate_contracts.sh
│   ├── guias_operativas
│   │   ├── GO-006_Expediente_Electronico.md
│   │   ├── GO-007_Notificacion_Brechas_Datos.md
│   │   ├── GO-008_Incidentes_IA.md
│   │   ├── GO-009_Interoperabilidad_PISEE.md
│   │   └── GO-010_Calidad_Plataformas_e_Indisponibilidad.md
│   ├── policies
│   │   ├── POL-DATOS-21719.yaml
│   │   ├── POL-IA-RIESGO-CL.yaml
│   │   └── POL-TDE-PLATAFORMAS.yaml
│   ├── schemas
│   │   ├── schema_contrato_agente_ia_tde.json
│   │   ├── schema_contrato_datos_tde.json
│   │   └── schema_contrato_proceso_tde.json
│   ├── templates
│   │   ├── presentacion
│   │   │   └── Informe_Arquitectura_TDE-CL.md
│   │   ├── contrato_agente_ia_tde.yaml
│   │   ├── contrato_datos_tde.yaml
│   │   ├── contrato_proceso_tde.yaml
│   │   ├── contrato_suministro_tde.yaml
│   │   └── ST_TDE-CL_template.md
│   └── README.md
├── 07-org
│   ├── governance
│   │   ├── comite_tic_ctd.md
│   │   └── RACI.md
│   ├── mappings
│   │   ├── efv_to_st.yaml
│   │   └── units_to_efv.yaml
│   ├── policies_org
│   │   └── POL-ORG-SEGURIDAD.md
│   ├── units
│   │   └── UN-EJEMPLO.yaml
│   ├── value_streams
│   │   └── EFV-EJEMPLO.yaml
│   └── organization.yaml
├── 08-inventory
│   ├── agentes_ia
│   │   └── AG-TRAMITE-001.yaml
│   ├── datos
│   │   └── DATA-EXPEDIENTE-001.yaml
│   └── st
│       └── ST-TRAMITE-001.md
├── aplanado.md
├── LICENSE
└── README.md
```

## File Contents

### productos/ASTA-SIGMA/00-overview/INDEX.md

```markdown
---
id: DOC-OVERVIEW-000
version: 1.1.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - README.md
  - 01-manual/MANUAL_ASTA-SIGMA.md
---
# Índice maestro del repositorio ASTA-SIGMA

La estructura del repositorio responde al modelo de "libros" acordado para separar propósito estratégico, ejecución operativa y extensiones territoriales.

## Árbol principal

```
ASTA-SIGMA/
├── README.md                    # Guía Día 0 (onboarding)
├── 00-overview/                 # Índices y navegación
├── 01-manual/                   # Manual unificado ASTA-SIGMA
├── 02-artefactos/               # Catálogo de plantillas, contratos y esquemas
├── 03-guias/                    # Guías de marco (GM) y operativas (GO)
├── 04-adrs/                     # Decisiones de arquitectura (core y overlay)
├── 05-policies/                 # Políticas computables generales
├── 06-overlay-tde-cl/           # Overlay normativo TDE Chile
├── 07-org/                      # Organización, gobernanza y RACI
└── 08-inventory/                # Inventario de instancias (ST, datos, IA, procesos)
```

## Tabla de navegación rápida

| Libro | Contenido clave | Punto de entrada |
| ----- | --------------- | ---------------- |
| Día 0 | Onboarding inmediato | [`README.md`](../README.md) |
| Fundamentos | Visión, modelo operativo y gobernanza continua | [`01-manual/MANUAL_ASTA-SIGMA.md`](../01-manual/MANUAL_ASTA-SIGMA.md) |
| Artefactos | Plantillas y contratos computables | [`02-artefactos/README.md`](../02-artefactos/README.md) *(pendiente de contribuir)* |
| Guías | Instrucciones prescriptivas (GM/GO) | [`03-guias/`](../03-guias) |
| ADRs | Decisiones registradas | [`04-adrs/`](../04-adrs) |
| Políticas | Políticas ejecutables | [`05-policies/`](../05-policies) |
| Overlay TDE-CL | Normativa y tooling local | [`06-overlay-tde-cl/README.md`](../06-overlay-tde-cl/README.md) |
| Organización | Estructura y responsables | [`07-org/`](../07-org) |
| Inventario | Instancias vivas de artefactos | [`08-inventory/`](../08-inventory) |

## Contribución

1. Crea una rama (`git checkout -b feature/mi-aporte`).
2. Sigue los templates del libro correspondiente (GO/GM, TPL, ADR).
3. Ejecuta los chequeos (`bash 06-overlay-tde-cl/ci/validate_contracts.sh`).
4. Abre un Pull Request describiendo evidencias Δ.

## Licencia

Este proyecto está bajo la licencia [MIT](../LICENSE).

```

### productos/ASTA-SIGMA/01-manual/MANUAL_ASTA-SIGMA.md

```markdown
---
id: MANUAL-ASTA-SIGMA
version: 2.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - ../README.md
  - ../02-artefactos/README.md
  - ../03-guias
  - ../04-adrs
  - ../05-policies
---
# Manual ASTA-SIGMA

## 1. Fundamentos (Qué y Por qué)

### 1.1 Visión y propósito

ASTA-SIGMA es el marco operativo estándar para transformar y operar Sistemas de Trabajo (ST) con enfoque en valor público verificable. El propósito es garantizar que cada iniciativa tecnológica sea alineada con la estrategia, robusta por diseño, adaptable y observable.

### 1.2 Principios rectores

- **Valor público verificable:** cada ST debe exponer métricas de impacto ciudadano o eficiencia.
- **Simplicidad esencial:** se modela solo lo necesario para decidir y operar.
- **Gobernanza como código:** reglas y controles se expresan como artefactos versionados.
- **Adaptabilidad continua:** la transformación es un flujo de aprendizaje y no un proyecto cerrado.
- **Humano al centro, IA como agente:** las capacidades digitales amplifican la acción humana dentro de un contrato sociotécnico explícito.
- **Equipos estables como unidad de producción:** los flujos de valor se operan con equipos persistentes multidisciplinarios.

### 1.3 Metamodelo Σ/Δ

La dualidad Σ/Δ modela estructura y dinámica.

| Grupo | Entidad Σ (Estructura) | Entidad Δ (Dinámica) |
| :--- | :--- | :--- |
| Entidades Fundamentales | Equipo de Flujo de Valor | Capacidad del Equipo (Rendimiento) |
|  | Sistema de Trabajo (ST) | Métricas de Valor (KPI/OKR) |
|  | Capacidad | Objetivos de Nivel de Servicio (SLO) |
|  | Servicio | Indicadores de Nivel de Servicio (SLI) |
|  | Proceso | Métricas de Flujo (Tiempo de Ciclo, STP) |
|  | Agente Digital (IA) | Métricas de IA (Fidelidad, Latencia) |
|  | Actor Humano | Métricas de Experiencia (CSAT) |
|  | Producto de Datos | Métricas de Calidad de Datos (DQ) |
|  | Aplicación/Plataforma | Métricas de Rendimiento |
| Entidades del Entorno | Contexto Externo | Señales / Cambios del Entorno |
|  | Dependencia Externa | Estado de Salud del Proveedor |
| Gobernanza | Política / Control | Evidencia Operativa (Logs, Alertas) |
|  | Riesgo | Incidentes / Tasa de Fallo |
|  | Evento | Presupuesto de Error |
|  | Contrato | Cumplimiento del Contrato |

### 1.4 Gobernanza del agente digital

Cada agente IA se posiciona según:

- **Propósito HCAI:** `Assist`, `Augment`, `Orchestrate`, `Automate`.
- **Ciclo cognitivo SDA:** `Sense`, `Decide`, `Act`.
- **Espectros:** autonomía (`RAG`→`ReAct`→`Plan & Execute`), responsabilidad (`Monitor`→`Execute`), interacción (`Machine-in-the-loop`→`Human-in-the-loop`→`Autonomous`).

Por defecto, los procesos con riesgo operan en modo Humano-en-el-Bucle (HITL). Los contratos de agente (ver `02-artefactos/contratos/`) deben dejar explícito propósito, límites y salvaguardas.

## 2. Modelo operativo (Cuándo)

### 2.1 Cadencia de doble bucle

- **Bucle táctico (PDCA semanal/quincenal):** el equipo planifica, ejecuta, verifica y actúa sobre mejoras incrementales utilizando tableros ágiles.
- **Bucle estratégico (RVC trimestral):** la Revisión de Valor y Capacidad sincroniza inversión, riesgos y prioridades; culmina con decisiones de continuar, expandir, reducir o cerrar un ST.

### 2.2 Línea base de adopción

Para incorporar un ST al marco:

1. **Taller de ST:** co-crear la ficha (`08-inventory/st/`) usando `TPL-UX-001` y las plantillas de portafolio.
2. **Clasificación de riesgo:** aplicar `03-guias/marco/GM-002` para obtener el Tier (R1-R3) y registrar SLO/SLA iniciales.
3. **Madurez del equipo:** autoevaluar con `03-guias/marco/GM-001` y seleccionar capacidades a fortalecer.
4. **Contratos de interfaz:** documentar datos, procesos, servicios, agentes y suministros con las plantillas `TPL-xxx` en `02-artefactos/contratos/`.

### 2.3 Ritmo táctico del equipo

1. **Planificar:** backlog priorizado contra objetivos de valor y riesgos.
2. **Diseñar:** decisiones significativas se registran en `04-adrs/core/` utilizando `04-adrs/ADR_template.md`.
3. **Construir y validar:** toda historia que toca una interfaz actualiza su contrato. El pipeline ejecuta validaciones de schema, pruebas de contrato de servicio/API, chequeos de políticas y accesibilidad.
4. **Operar y observar:** aplicar `03-guias/operativas/GO-002` y `GO-005` para calidad de IA y UX. Registrar métricas Δ en tableros de SLO/SLI.
5. **Aprender y ajustar:** retrospectivas alimentan la actualización del backlog y de los contratos.

### 2.4 Ritmo estratégico de gobernanza (RVC)

1. **Preparación asíncrona:** completar la plantilla `02-artefactos/presentacion/templates/plantilla_informe_portafolio.md` con KPIs, deuda técnica y cumplimiento de políticas.
2. **Sesión RVC (120 min):** exposición de evidencias, diálogo y decisión de inversión.
3. **Cierre:** publicar la decisión, actualizar portafolio (`02-artefactos/portafolio/`) y detonar acciones derivadas (FinOps, seguridad, inversiones).

## 3. Kit de herramientas (Con qué)

### 3.1 Catálogo resumido

| ID | Artefacto | Propósito | Ubicación |
| --- | --- | --- | --- |
| TPL-ST-001 | Ficha de Sistema de Trabajo | Delimitar alcance y métricas | `06-overlay-tde-cl/templates/ST_TDE-CL_template.md` (extender al core) |
| TPL-DATA-001 | Contrato de Datos | Especificar intercambio de datos | `06-overlay-tde-cl/templates/contrato_datos_tde.yaml` |
| TPL-PROC-001 | Contrato de Proceso | Definir coreografías | `06-overlay-tde-cl/templates/contrato_proceso_tde.yaml` |
| TPL-SUP-001 | Contrato de Suministro | Gestionar terceros críticos | `06-overlay-tde-cl/templates/contrato_suministro_tde.yaml` |
| **TPL-SVC-001** | **Contrato de Servicio (API)** | **Garantizar APIs expuestas / OpenAPI** | `02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml` |
| TPL-AG-001 | Contrato de Agente IA | Controlar espectros y salvaguardas | `06-overlay-tde-cl/templates/contrato_agente_ia_tde.yaml` |
| TPL-UX-001 | Ficha UX | Documentar experiencias clave | `02-artefactos/ux/` |
| GM-001 | Madurez EFV | Autoevaluación y roadmap | `03-guias/marco/GM-001_*` |
| GM-003 | Definición de Contratos | Checklist de interfaces | `03-guias/marco/GM-003_*` |
| GO-003 | Ensamblaje de artefactos | Orquestar creación/actualización | `03-guias/operativas/GO-003_*` |
| POL-* | Políticas computables | Ejecutar controles automáticos | `05-policies/` |

### 3.2 Mapa de artefactos interconectados

| Núcleo | Artefactos asociados | Políticas | Métricas Δ | Gates CI | Evidencias |
| ------ | ------------------- | --------- | ---------- | -------- | --------- |
| Sistema de Trabajo | Ficha ST, ADRs, Contracts (datos/proceso/servicio/suministro) | POL-FINOPS-IA, POL-TRAZA-IA | KPIs, OKRs, backlog estratégico | Validación de schema, pruebas de contrato, FinOps lint | Informe RVC, registros de decisión |
| Agente IA | Contrato de Agente, GO-002, POL-ABUSO-LLM | POL-ABUSO-LLM, política de temperatura | Métricas de fidelidad, latencia | Suite de calidad IA, revisión humana HITL | Logs explicables, evidencia de citas |
| Producto de Datos | Contrato de Datos, POL-DATOS-21719 (overlay) | Política de linaje y DQ | Métricas DQ, linaje | Validación de schema, pruebas de DQ | Reportes de calidad mensual |
| Servicio/API | Contrato de Servicio, OpenAPI, ADRs | Política de rate limit, seguridad | SLO/SLI de disponibilidad y latencia | Lint OpenAPI, tests contractuales, WCAG | Dashboard SLO, incidentes postmortem |
| Experiencia de Usuario | Ficha UX, GO-005 | Política de accesibilidad | CSAT, NPS | Auditoría WCAG automatizada | Evidencias Δ de accesibilidad |

### 3.3 Referencias cruzadas

- Las plantillas `TPL-xxx` definen front-matter obligatorio (`id`, `version`, `status`, `date`, `owner`, `related`).
- Los schemas en `02-artefactos/contratos/schemas/` sustentan linters y se referencian desde `06-overlay-tde-cl/schemas/` cuando aplica.
- El overlay añade campos `x-overlay.tde_cl.*` en las instancias (ver sección 4.4).

## 4. Gobernanza continua (Bajo qué reglas)

### 4.1 Tiers de riesgo

- **R1 (Baja criticidad):** controles mínimos, contratos de datos/servicio obligatorios, monitoreo básico.
- **R2 (Media):** incluye contratos de proceso, pruebas de carga y planes de continuidad.
- **R3 (Alta):** requiere contratos completos (incluyendo agente IA), revisión externa de seguridad y evidencias Δ por liberación.

### 4.2 Matriz de quality gates

La tabla maestra `02-artefactos/Matriz_Gobernanza_CI.md` especifica los gates obligatorios por artefacto y Tier. El pipeline (`.github/workflows/validate.yml`) debe cargar esta matriz y fallar si el artefacto carece de las evidencias declaradas.

### 4.3 FinOps, SRE y evidencia Delta

- `04-adrs/core/ADR-core-104` establece límites de gasto y rate limits por Tier.
- Las métricas Δ (SLO/SLI, error budgets) se publican en cada RVC y se enlazan desde los contratos.
- Cada PR adjunta evidencia Δ mínima: validaciones de contrato, reporte de políticas y análisis de incidentes (si aplica).

### 4.4 Overlays y desacoplamiento

Los campos normativos locales se encapsulan bajo `x-overlay.<pais>.*`. Por ejemplo, `08-inventory/agentes_ia/` utiliza `x-overlay.tde_cl.dp_21719` para obligaciones de la Ley 21.719. Esto evita acoplar el perfil país a los artefactos base y permite múltiples overlays simultáneos.

## 5. Recetas de aplicación (Cómo)

### 5.1 Iniciar un nuevo Sistema de Trabajo

1. Ejecutar el taller de ST (sección 2.2) y definir contratos iniciales.
2. Registrar ADRs de arquitectura base (`04-adrs/core`).
3. Activar gates según la matriz de gobernanza.

### 5.2 Modernizar un sistema legado

1. Invertir la arquitectura actual en una ficha ST y ADRs de contexto.
2. Documentar deuda técnica y riesgos; priorizar en RVC.
3. Migrar contratos a las plantillas canónicas y habilitar telemetry (`02-artefactos/telemetria`).

### 5.3 Orquestar un proceso inter-divisional

1. Modelar dependencias con `GM-003` y contratos de proceso/servicio.
2. Establecer acuerdos RACI en `07-org/governance/`.
3. Publicar dashboards compartidos con métricas Δ.

### 5.4 Elaborar TDR basados en arquitectura

1. Usar las plantillas de `02-artefactos/presentacion/templates/` para comunicar alcance y restricciones.
2. Referenciar contratos computables como anexos obligatorios.
3. Evaluar proveedores mediante simulaciones de quality gates.

> Para dudas operativas consulta las Guías (`03-guias/`) y las políticas computables (`05-policies/`).

```

### productos/ASTA-SIGMA/02-artefactos/Matriz_Gobernanza_CI.md

```markdown
---
id: GOV-MATRIX-001
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - ../contratos/templates/TPL-SVC-001_Service_Contract.yaml
  - ../contratos/schemas/service_contract.schema.json
  - ../../06-overlay-tde-cl/ci/validate_contracts.sh
---
# Matriz de Gobernanza Computable (Artefacto ↔ Gate ↔ Tier)

| Artefacto | Gates obligatorios en CI | Tier R1 | Tier R2 | Tier R3 |
| --------- | ------------------------ | ------: | ------: | ------: |
| Data Contract | Validación schema JSON (`schema_contrato_datos_tde.json`), verificaciones de calidad | ✓ | ✓ | ✓ |
| Process Contract | Validación schema JSON, revisión de HITL declarada, simulación de interoperabilidad | – | ✓ | ✓ |
| Service Contract (API) | Lint OpenAPI + pruebas de contrato (`dredd`/`prism`) | ✓ | ✓ | ✓ |
| Agent Contract (IA) | Validación schema + pipeline de calidad `GO-002` (fidelidad/citas) | – | ✓ | ✓ |
| UX / Accesibilidad | Gate WCAG automatizado (Axe/Pa11y) | ✓ | ✓ | ✓ |
| Supply Contract | Validación de cláusulas BCP/DRP y rate-limit computable | ✓ | ✓ | ✓ |

- `✓` indica bloqueo obligatorio del pipeline.
- `–` indica monitoreo o revisión manual recomendada pero no bloqueante.
- Los resultados deben anexarse como evidencias Δ por PR (ver `01-manual/MANUAL_ASTA-SIGMA.md`).

```

### productos/ASTA-SIGMA/02-artefactos/README.md

```markdown
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

```

### productos/ASTA-SIGMA/02-artefactos/contratos/schemas/service_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "$id": "https://asta-sigma.gov/schemas/service-contract.json",
  "title": "ASTA-SIGMA Service Contract",
  "type": "object",
  "required": [
    "metadata",
    "contract_type",
    "service",
    "endpoints",
    "performance",
    "observability",
    "security",
    "compliance",
    "dependencies",
    "change_management",
    "testing"
  ],
  "properties": {
    "metadata": {
      "type": "object",
      "required": ["id", "version", "status", "date", "owner", "related"],
      "properties": {
        "id": {"type": "string"},
        "version": {"type": "string"},
        "status": {"type": "string"},
        "date": {"type": "string", "format": "date"},
        "owner": {"type": "string"},
        "related": {
          "type": "array",
          "items": {"type": "string"}
        }
      }
    },
    "contract_type": {"const": "service_contract"},
    "service": {
      "type": "object",
      "required": ["service_id", "name", "summary", "owners", "tiers"],
      "properties": {
        "service_id": {"type": "string"},
        "name": {"type": "string"},
        "summary": {"type": "string"},
        "owners": {
          "type": "array",
          "minItems": 1,
          "items": {
            "type": "object",
            "required": ["team_id", "contact"],
            "properties": {
              "team_id": {"type": "string"},
              "contact": {"type": "string"}
            }
          }
        },
        "tiers": {
          "type": "object",
          "required": ["risk", "availability_class"],
          "properties": {
            "risk": {"type": "string"},
            "availability_class": {"type": "string"}
          }
        }
      }
    },
    "endpoints": {
      "type": "array",
      "minItems": 1,
      "items": {
        "type": "object",
        "required": ["name", "description", "interface_type", "specification"],
        "properties": {
          "name": {"type": "string"},
          "description": {"type": "string"},
          "interface_type": {"type": "string"},
          "specification": {
            "type": "object",
            "required": ["format", "ref"],
            "properties": {
              "format": {"type": "string"},
              "ref": {"type": "string"}
            }
          },
          "consumers": {
            "type": "array",
            "items": {
              "type": "object",
              "required": ["st_id", "purpose"],
              "properties": {
                "st_id": {"type": "string"},
                "purpose": {"type": "string"}
              }
            }
          }
        }
      }
    },
    "performance": {
      "type": "object",
      "required": ["slo", "capacity"],
      "properties": {
        "slo": {
          "type": "object",
          "required": ["availability_target", "latency_p95_ms", "error_budget_days"],
          "properties": {
            "availability_target": {"type": "number"},
            "latency_p95_ms": {"type": "number"},
            "error_budget_days": {"type": "number"}
          }
        },
        "capacity": {
          "type": "object",
          "required": ["max_rps"],
          "properties": {
            "max_rps": {"type": "number"},
            "burst_rps": {"type": "number"}
          }
        }
      }
    },
    "observability": {
      "type": "object",
      "required": ["traces_required", "log_fields"],
      "properties": {
        "traces_required": {"type": "boolean"},
        "log_fields": {
          "type": "array",
          "items": {"type": "string"}
        }
      }
    },
    "security": {
      "type": "object",
      "required": ["authentication", "authorization_scope", "rate_limits", "data_protection"],
      "properties": {
        "authentication": {"type": "string"},
        "authorization_scope": {"type": "string"},
        "rate_limits": {
          "type": "object",
          "required": ["policy_ref"],
          "properties": {
            "policy_ref": {"type": "string"},
            "overrides": {
              "type": "array",
              "items": {
                "type": "object",
                "required": ["tier", "max_rps"],
                "properties": {
                  "tier": {"type": "string"},
                  "max_rps": {"type": "number"}
                }
              }
            }
          }
        },
        "data_protection": {
          "type": "object",
          "required": ["handles_pii", "encryption_at_rest", "encryption_in_transit"],
          "properties": {
            "handles_pii": {"type": "boolean"},
            "encryption_at_rest": {"type": "boolean"},
            "encryption_in_transit": {"type": "boolean"}
          }
        }
      }
    },
    "compliance": {
      "type": "object",
      "required": ["policies"],
      "properties": {
        "policies": {
          "type": "array",
          "items": {"type": "string"}
        },
        "overlays": {
          "type": "array",
          "items": {
            "type": "object",
            "required": ["name", "policy_refs"],
            "properties": {
              "name": {"type": "string"},
              "policy_refs": {
                "type": "array",
                "items": {"type": "string"}
              }
            }
          }
        }
      }
    },
    "dependencies": {
      "type": "object",
      "properties": {
        "upstream_services": {
          "type": "array",
          "items": {
            "type": "object",
            "required": ["service_id", "contract_ref"],
            "properties": {
              "service_id": {"type": "string"},
              "contract_ref": {"type": "string"},
              "dependency_type": {"type": "string"}
            }
          }
        },
        "data_contracts": {
          "type": "array",
          "items": {
            "type": "object",
            "required": ["data_contract_id", "contract_ref"],
            "properties": {
              "data_contract_id": {"type": "string"},
              "contract_ref": {"type": "string"},
              "purpose": {"type": "string"}
            }
          }
        }
      }
    },
    "change_management": {
      "type": "object",
      "required": ["owner_role", "review_cadence", "versioning_strategy", "contact_channel"],
      "properties": {
        "owner_role": {"type": "string"},
        "review_cadence": {"type": "string"},
        "versioning_strategy": {"type": "string"},
        "contact_channel": {"type": "string"},
        "rollback_plan": {"type": "string"}
      }
    },
    "testing": {
      "type": "object",
      "required": ["contract_tests"],
      "properties": {
        "contract_tests": {
          "type": "object",
          "required": ["tool", "location"],
          "properties": {
            "tool": {"type": "string"},
            "location": {"type": "string"}
          }
        },
        "sandbox_available": {"type": "boolean"}
      }
    },
    "notes": {"type": "string"}
  }
}

```

### productos/ASTA-SIGMA/02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml

```yaml
metadata:
  id: TPL-SVC-001
  version: 1.0.0
  status: draft
  date: '2025-01-01'
  owner: ASTA-SIGMA Core Team
  related:
    - ../../Matriz_Gobernanza_CI.md
contract_type: service_contract
service:
  service_id: SVC-XXX
  name: <Human readable name>
  summary: <Short description of the service>
  owners:
    - team_id: EFV-XXX
      contact: owner@example.gov
  tiers:
    risk: R1
    availability_class: GOLD
endpoints:
  - name: <Endpoint name>
    description: <What the endpoint does>
    interface_type: REST # Trad: Tipo de interfaz (REST, GraphQL, gRPC)
    specification:
      format: openapi
      ref: ./openapi/service.yaml # Trad: Ruta relativa a la especificación OpenAPI
    consumers:
      - st_id: ST-XXX
        purpose: <Why the consumer uses this API>
performance:
  slo:
    availability_target: 0.990
    latency_p95_ms: 500
    error_budget_days: 3
  capacity:
    max_rps: 100
    burst_rps: 150
observability:
  traces_required: true
  log_fields:
    - trace_id
    - span_id
    - st_id
    - service_version
security:
  authentication: oauth2
  authorization_scope: <scope>
  rate_limits:
    policy_ref: ../../05-policies/POL-FINOPS-IA.yaml
    overrides:
      - tier: R3
        max_rps: 50
  data_protection:
    handles_pii: false
    encryption_at_rest: true
    encryption_in_transit: true
compliance:
  policies:
    - ../../05-policies/POL-TRAZA-IA.yaml
  overlays:
    - name: tde_cl
      policy_refs:
        - ../../06-overlay-tde-cl/policies/POL-TDE-PLATAFORMAS.yaml
        - ../../06-overlay-tde-cl/policies/POL-DATOS-21719.yaml
dependencies:
  upstream_services:
    - service_id: SVC-UP-001
      contract_ref: ../instances/SVC-UP-001.yaml
      dependency_type: synchronous
  data_contracts:
    - data_contract_id: DATA-XXX
      contract_ref: ../datos/DATA-XXX.yaml
      purpose: analytics_feed
change_management:
  owner_role: Product Owner
  review_cadence: quarterly
  versioning_strategy: semver
  contact_channel: slack://asta-sigma-service
  rollback_plan: <Link to runbook>
testing:
  contract_tests:
    tool: dredd
    location: tests/contracts
  sandbox_available: true
notes: |
  # Trad: agregue cualquier información contextual relevante.

```

### productos/ASTA-SIGMA/02-artefactos/modelos/Modelo_Referencia_Tecnico_OCE.md

```markdown
---
id: REF-OCE-001
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../../01-manual/MANUAL_ASTA-SIGMA.md
  - ../../04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md
---
# Modelo de Referencia Técnico: Orquestación Cognitiva Empresarial (OCE)


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

### productos/ASTA-SIGMA/02-artefactos/portafolio/TPL-PORT-001_Ficha_Portafolio.yaml

```yaml
# Ficha de Portafolio de Transformación
metadata:
  id: TPL-PORT-001
  version: 1.0.0
  status: active
  date: 'YYYY-MM-DD'
  owner: "Oficina de Transformación Digital"
  related:
    - ../Matriz_Gobernanza_CI.md

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

### productos/ASTA-SIGMA/02-artefactos/presentacion/README.md

```markdown
---
id: DOC-PRES-000
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - ../README.md
  - ../../03-guias/operativas/GO-003_Manual_Ensamblaje_Artefactos.md
---
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
3. **Añada el Análisis:** Las plantillas proporcionan la estructura. El valor se genera al añadir el análisis y las recomendaciones basadas en los datos extraídos.
4. **Mantenga la Trazabilidad:** Siempre incluya los IDs de los artefactos (`ST-XXX`, `INIT-YYY`) en su documento para mantener un vínculo claro con la fuente de verdad de la arquitectura.

```

### productos/ASTA-SIGMA/02-artefactos/presentacion/templates/plantilla_informe_arquitectura.md

```markdown
---
id: TPL-PRES-002
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA Core Team
related:
  - ../../README.md
---
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

### productos/ASTA-SIGMA/02-artefactos/presentacion/templates/plantilla_informe_portafolio.md

```markdown
---
id: TPL-PRES-003
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA Core Team
related:
  - ../../README.md
---
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

### productos/ASTA-SIGMA/02-artefactos/presentacion/templates/plantilla_plan_iniciativa.md

```markdown
---
id: TPL-PRES-004
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA Core Team
related:
  - ../../README.md
---
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

### productos/ASTA-SIGMA/02-artefactos/presentacion/templates/plantilla_plan_maestro_transformacion.md

```markdown
---
id: TPL-PRES-001
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA Core Team
related:
  - ../../README.md
---
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

### productos/ASTA-SIGMA/02-artefactos/telemetria/Esquema_Telemetria_ASTA_OTel.md

```markdown
---
id: OBS-OTEL-001
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../../04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md
---
# Esquema de Telemetría ASTA-SIGMA con OpenTelemetry (OTel)


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

### productos/ASTA-SIGMA/02-artefactos/ux/TPL-UX-001_Plantilla_Ficha_UX.md

```markdown
---
id: TPL-UX-001
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA UX Guild
related:
  - ../../03-guias/operativas/GO-005_Diseno_UI.md
---
# Ficha de Experiencia de Usuario (UX): [Nombre del Servicio o Flujo]


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

### productos/ASTA-SIGMA/03-guias/marco/GM-001_Guia_Madurez_Equipos_Flujo_Valor.md

```markdown
---
id: GM-001
version: 1.0.0
status: active
date: 2025-09-15
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
---
# Guía de Madurez para Equipos de Flujo de Valor


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

### productos/ASTA-SIGMA/03-guias/marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md

```markdown
---
id: GM-002
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../operativas/GO-004_GameDays_Proveedores_y_DR.md
  - ../operativas/GO-005_Diseno_UI.md
---
# Guía Metodológica: Evaluación y Clasificación de Riesgo de ST


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

### productos/ASTA-SIGMA/03-guias/marco/GM-003_Playbook_Definicion_Contratos_Interfaz.md

```markdown
---
id: GM-003
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../operativas/GO-004_GameDays_Proveedores_y_DR.md
  - ../operativas/GO-005_Diseno_UI.md
---
# Playbook: Definición y Negociación de Contratos de Interfaz


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

### productos/ASTA-SIGMA/03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md

```markdown
---
id: GO-002
version: 1.0.0
status: active
date: 2025-09-15
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../operativas/GO-005_Diseno_UI.md
  - ../marco/GM-001_Guia_Madurez_Equipos_Flujo_Valor.md
---
# Guía Operativa: Monitoreo Continuo de Calidad para Agentes de IA


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

### productos/ASTA-SIGMA/03-guias/operativas/GO-003_Manual_Ensamblaje_Artefactos.md

```markdown
---
id: GO-003
version: 2.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../marco/GM-003_Playbook_Definicion_Contratos_Interfaz.md
  - ../operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
  - ../operativas/GO-004_GameDays_Proveedores_y_DR.md
---
# GO-003: Manual de Ensamblaje de Artefactos ASTA-SIGMA


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

### productos/ASTA-SIGMA/03-guias/operativas/GO-004_GameDays_Proveedores_y_DR.md

```markdown
---
id: GO-004
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
---
# GO-004: Guía Operativa para Game Days de Proveedores y Pruebas de DR


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

### productos/ASTA-SIGMA/03-guias/operativas/GO-005_Diseno_UI.md

```markdown
---
id: GO-005
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
  - ../marco/GM-001_Guia_Madurez_Equipos_Flujo_Valor.md
---
# GO-005: Guía Operativa de Diseño de Interfaz de Usuario (UI)


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

### productos/ASTA-SIGMA/03-guias/templates/GO_template.md

```markdown
---
id: GO-XXX
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA Core Team
related: []
---
# Guía Operativa: [Nombre de la Guía]

## 1. Situación

*Descripción del problema o escenario que esta guía aborda.*

## 2. Proceso de Respuesta

*Pasos detallados para manejar la situación, incluyendo acciones automatizadas y manuales.*

## 3. Roles y Responsabilidades

*Quién es responsable de cada paso del proceso.*

## 4. Análisis Post-Incidente

*Cómo aprender de la situación para mejorar el sistema a largo plazo.*

```

### productos/ASTA-SIGMA/04-adrs/ADR_template.md

```markdown
---
id: ADR-XXX
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA Architecture Guild
related: []
---
# ADR-XXX: [Título de la Decisión]

## Contexto

*¿Cuál es el problema o la fuerza que nos lleva a tomar esta decisión?*

## Decisión

*¿Cuál es la decisión que tomamos?*

## Consecuencias

*¿Cuáles son los resultados positivos y negativos de esta decisión? ¿Qué compromisos aceptamos?*

```

### productos/ASTA-SIGMA/04-adrs/core/ADR-core-101_Patron_Validacion_Contratos_Datos.md

```markdown
---
id: ADR-core-101
version: 1.0.0
status: proposed
date: 2025-09-15
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../06-overlay-tde-cl/templates/contrato_datos_tde.yaml
  - ../../02-artefactos/Matriz_Gobernanza_CI.md
---
# ADR-core-101: Patrón de Arquitectura de Referencia para la Validación de Contratos de Datos


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

### productos/ASTA-SIGMA/04-adrs/core/ADR-core-102_Adopcion_MCP.md

```markdown
---
id: ADR-core-102
version: 1.0.0
status: proposed
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
  - ../../02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml
---
# ADR-core-102: Adopción de Model Context Protocol (MCP) para la Interacción con Herramientas de Agentes


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

### productos/ASTA-SIGMA/04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md

```markdown
---
id: ADR-core-103
version: 1.0.0
status: proposed
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../02-artefactos/telemetria/Esquema_Telemetria_ASTA_OTel.md
  - ../../03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
---
# ADR-core-103: Estándar de Telemetría y Trazabilidad OTel para IA/RAG
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

### productos/ASTA-SIGMA/04-adrs/core/ADR-core-104_Politica_FinOps_y_RateLimit_por_Tier.md

```markdown
---
id: ADR-core-104
version: 1.0.0
status: proposed
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../05-policies/POL-FINOPS-IA.yaml
  - ../../05-policies/politica_temperatura_llm.yaml
---
# ADR-core-104: Política de FinOps y Rate-Limit por Tier de Riesgo
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

### productos/ASTA-SIGMA/04-adrs/core/ADR-core-105_Estandar_Linaje_y_DQ_Computable.md

```markdown
---
id: ADR-core-105
version: 1.0.0
status: accepted
date: 2025-09-22
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../06-overlay-tde-cl/templates/contrato_datos_tde.yaml
  - ../../02-artefactos/Matriz_Gobernanza_CI.md
---
# ADR-core-105: Estándar de Linaje y Calidad de Datos (DQ) Computable
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

### productos/ASTA-SIGMA/04-adrs/core/ADR-core-106_DR_Chaos_Obligatorio_Suministro.md

```markdown
---
id: ADR-core-106
version: 1.0.0
status: proposed
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../03-guias/operativas/GO-004_GameDays_Proveedores_y_DR.md
  - ../../06-overlay-tde-cl/templates/contrato_suministro_tde.yaml
---
# ADR-core-106: DR/Chaos como Obligación de Suministro
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

### productos/ASTA-SIGMA/04-adrs/tde/ADR-tde-201_Integracion_Plataformas.md

```markdown
---
id: ADR-tde-201
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../06-overlay-tde-cl/policies/POL-TDE-PLATAFORMAS.yaml
  - ../../06-overlay-tde-cl/guias_operativas/GO-009_Interoperabilidad_PISEE.md
---
# ADR-tde-201 — Integración con Plataformas TDE‑Chile (ClaveÚnica, PISEE, DocDigital, Notificador)

**Decisión:** Integrar por defecto con las plataformas compartidas operadas por la SGD para identidad, interoperabilidad, expediente/documentos y notificaciones.  
**Motivación:** Cumplir LTDE 21.180, rectoría SGD 21.658 y reducir riesgo de implementación.  
**Consecuencias:** Contratos y ST deben declarar integración, SLAs y evidencias de cumplimiento; pruebas de interoperabilidad obligatorias; fall‑back autorizado por indisponibilidad.

```

### productos/ASTA-SIGMA/04-adrs/tde/ADR-tde-202_Calidad_Plataformas_e_Indisponibilidad.md

```markdown
---
id: ADR-tde-202
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../06-overlay-tde-cl/guias_operativas/GO-010_Calidad_Plataformas_e_Indisponibilidad.md
  - ../../06-overlay-tde-cl/templates/contrato_suministro_tde.yaml
---
# ADR-tde-202 — Calidad de Plataformas e Indisponibilidad

**Decisión:** Establecer SLO mínimos por criticidad; exigir reportes de indisponibilidad y planes DR/BCP probados semestralmente (GameDays).  
**Motivación:** Asegurar continuidad del servicio y evidencia operativa.  
**Consecuencias:** Registro de incidentes, pruebas de recuperación, métricas públicas y cláusulas de auditoría en contratos de suministro.

```

### productos/ASTA-SIGMA/05-policies/POL-ABUSO-LLM.yaml

```yaml
# Política Computable de Pruebas de Abuso para LLMs
metadata:
  id: POL-ABUSO-LLM
  version: 1.0.0
  status: active
  date: '2025-09-22'
  owner: ASTA-SIGMA IA Guild
  related:
    - ../03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md

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

### productos/ASTA-SIGMA/05-policies/POL-FINOPS-IA.yaml

```yaml
# Política Computable de FinOps para Agentes de IA
metadata:
  id: POL-FINOPS-IA
  version: 1.0.0
  status: active
  date: '2025-09-22'
  owner: ASTA-SIGMA FinOps Guild
  related:
    - ../04-adrs/core/ADR-core-104_Politica_FinOps_y_RateLimit_por_Tier.md

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

### productos/ASTA-SIGMA/05-policies/POL-TRAZA-IA.yaml

```yaml
# Política Computable de Trazabilidad para Agentes de IA
metadata:
  id: POL-TRAZA-IA
  version: 1.0.0
  status: active
  date: '2025-09-22'
  owner: ASTA-SIGMA SRE Guild
  related:
    - ../04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md

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

### productos/ASTA-SIGMA/05-policies/politica_slo_por_riesgo.yaml

```yaml
# Politica de SLOs Minimos por Tier de Riesgo (v1.1 con IA/FinOps)
# Define objetivos mínimos de confiabilidad, calidad y costo validados en CI/CD.
metadata:
  id: POL-SLO-RISK
  version: 1.1.0
  status: active
  date: '2025-09-22'
  owner: ASTA-SIGMA SRE Guild
  related:
    - ../03-guias/marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
    - ../02-artefactos/Matriz_Gobernanza_CI.md
terms:
  - name: "SLOs por Tier de Riesgo"
    risk_tiers:
      R1_LOW:
        availability_pct: 99.0
        latency_p95_ms: 2500
        ttft_p95_ms: 1500
        max_error_pct: 5
        max_cost_per_1k_tokens_usd: 0.04 # Trad: costo máximo por 1k tokens
      R2_MEDIUM:
        availability_pct: 99.5
        latency_p95_ms: 1500
        ttft_p95_ms: 900
        max_error_pct: 2
        max_cost_per_1k_tokens_usd: 0.06
        min_fidelity: 0.97 # Trad: fidelidad mínima
        min_citation_precision: 0.98 # Trad: precisión mínima de citas
      R3_HIGH:
        availability_pct: 99.9
        latency_p95_ms: 500
        ttft_p95_ms: 400
        max_error_pct: 1
        max_cost_per_1k_tokens_usd: 0.08
        min_fidelity: 0.98
        min_citation_precision: 0.99
    error_budget:
      window_days: 30
      actions_when_breached: ["freeze_deployments", "shadow_ab", "postmortem_required"] # Trad: acciones cuando el presupuesto se agota

```

### productos/ASTA-SIGMA/05-policies/politica_temperatura_llm.yaml

```yaml
metadata:
  id: POL-TEMP-LLM
  version: 1.0.0
  status: active
  date: '2025-09-22'
  owner: ASTA-SIGMA IA Guild
  related:
    - ../03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
terms:
  - name: "Límites de Temperatura para Agentes LLM"
    policy:
      name: "Política de Control de Creatividad de LLM"
      description: "Establece límites de temperatura/top-p para mitigar alucinaciones en tareas sensibles."
      rules:
        - id: "temp-rule-001"
          name: "Límites de Temperatura por Tipo de Tarea"
          description: "Define la temperatura máxima permitida según la naturaleza de la tarea."
          task_types:
            normative_operations: # Trad: tareas basadas en normativa
              max_temperature: 0.2
              max_top_p: 0.7
            tactical_analysis: # Trad: análisis y síntesis
              max_temperature: 0.5
              max_top_p: 0.9
            creative_generation: # Trad: ideación o borrador
              max_temperature: 0.8
              max_top_p: 1.0
        - id: "temp-rule-002"
          name: "HITL Obligatorio para Alta Creatividad"
          description: "Las tareas que permiten alta creatividad requieren supervisión humana obligatoria."
          condition: "task.temperature > 0.5"
          evidence_required:
            - "El `Contrato de Agente` debe especificar una regla HITL para este escenario."

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/README.md

```markdown
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

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/artefactos/Modelo_Referencia_Tecnico_OCE_TDE-CL.md

```markdown
---
id: REF-OCE-TDE-001
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../policies/POL-TDE-PLATAFORMAS.yaml
  - ../templates/ST_TDE-CL_template.md
---
# Modelo de Referencia Técnico OCE — TDE‑Chile (resumen)

Capas: Identidad (ClaveÚnica), Firma (FirmaGob), Expediente/Documental (DocDigital), Interoperabilidad (PISEE), Notificador/DDU, Observabilidad (OTel), Seguridad (SIEM/Zero‑Trust), Analítica (MGDE).

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/ci/validate_contracts.sh

```bash
#!/usr/bin/env bash
set -euo pipefail

# ASTA-SIGMA overlay validation without external pip dependencies.
echo "[ASTA‑SIGMA | TDE‑CL] Validando contratos..."

fail=0
files=$(git ls-files -- '08-inventory/**/*.yaml' '06-overlay-tde-cl/templates/contrato_*_tde.yaml' || true)

if [ -z "$files" ]; then
  echo "[WARN] No se encontraron contratos a validar."
  exit 0
fi

for f in $files; do
  python3 - "$f" <<'PY' || fail=1
import datetime
import json
import os
import subprocess
import sys
from typing import Any, Dict, Iterable, List

fname = sys.argv[1]

RUBY_CMD = os.environ.get("ASTA_SIGMA_RUBY", "ruby")

RUBY_SCRIPT = (
    "begin;"
    " content = File.read(ARGV[0]);"
    " data = YAML.safe_load(content, permitted_classes: [], permitted_symbols: [], aliases: true) || {};"
    " STDOUT.write(JSON.generate(data));"
    "rescue StandardError => e;"
    " STDERR.puts('[YAML] ' + e.message);"
    " exit 1;"
    "end;"
)

def load_yaml(path: str) -> Dict[str, Any]:
    proc = subprocess.run(
        [RUBY_CMD, "-ryaml", "-rjson", "-e", RUBY_SCRIPT, path],
        capture_output=True,
        text=True,
        check=False,
    )
    if proc.returncode != 0:
        sys.stderr.write(proc.stderr or f"[ERROR] Ruby YAML loader falló para {path}\n")
        raise SystemExit(proc.returncode)
    payload = proc.stdout.strip()
    if not payload:
        return {}
    try:
        return json.loads(payload)
    except json.JSONDecodeError as exc:
        sys.stderr.write(f"[ERROR] No se pudo decodificar YAML como JSON en {path}: {exc}\n")
        raise SystemExit(2)


def type_name(value: Any) -> str:
    if isinstance(value, bool):
        return "boolean"
    if isinstance(value, int):
        return "integer"
    if isinstance(value, float):
        return "number"
    if isinstance(value, dict):
        return "object"
    if isinstance(value, list):
        return "array"
    if isinstance(value, str):
        return "string"
    if value is None:
        return "null"
    return type(value).__name__


def matches_type(value: Any, expected: str) -> bool:
    if expected == "object":
        return isinstance(value, dict)
    if expected == "array":
        return isinstance(value, list)
    if expected == "string":
        return isinstance(value, str)
    if expected == "boolean":
        return isinstance(value, bool)
    if expected == "integer":
        return isinstance(value, int) and not isinstance(value, bool)
    if expected == "number":
        return (isinstance(value, (int, float)) and not isinstance(value, bool))
    if expected == "null":
        return value is None
    # For unsupported keywords, assume match to avoid false negatives.
    return True


def validate(instance: Any, schema: Dict[str, Any], path: str = "$") -> List[str]:
    errors: List[str] = []

    schema_type = schema.get("type")
    if schema_type is not None:
        if isinstance(schema_type, list):
            allowed = schema_type
        else:
            allowed = [schema_type]
        if not any(matches_type(instance, t) for t in allowed):
            errors.append(f"{path}: se esperaba tipo {allowed}, se recibió {type_name(instance)}")
            return errors

    if "const" in schema and instance != schema["const"]:
        errors.append(f"{path}: se esperaba el valor constante {schema['const']!r}, se recibió {instance!r}")

    if "enum" in schema and instance not in schema["enum"]:
        errors.append(f"{path}: el valor {instance!r} no pertenece al conjunto permitido {schema['enum']!r}")

    fmt = schema.get("format")
    if fmt == "date" and isinstance(instance, str):
        try:
            datetime.date.fromisoformat(instance)
        except ValueError:
            errors.append(f"{path}: el valor {instance!r} no es una fecha ISO válida")

    if isinstance(instance, dict):
        required = schema.get("required", [])
        for key in required:
            if key not in instance:
                errors.append(f"{path}: falta la clave obligatoria '{key}'")
        properties = schema.get("properties", {})
        additional = schema.get("additionalProperties", True)
        for key, value in instance.items():
            if key in properties:
                errors.extend(validate(value, properties[key], f"{path}.{key}"))
            else:
                if isinstance(additional, dict):
                    errors.extend(validate(value, additional, f"{path}.{key}"))
                elif additional is False:
                    errors.append(f"{path}: la clave adicional '{key}' no está permitida")

    if isinstance(instance, list):
        min_items = schema.get("minItems")
        if isinstance(min_items, int) and len(instance) < min_items:
            errors.append(f"{path}: debe contener al menos {min_items} elementos")
        items_schema = schema.get("items")
        if isinstance(items_schema, dict):
            for idx, item in enumerate(instance):
                errors.extend(validate(item, items_schema, f"{path}[{idx}]"))

    return errors


data = load_yaml(fname)
if not isinstance(data, dict):
    sys.exit(0)

contract = data.get("contract")
if not isinstance(contract, dict):
    sys.exit(0)

kind = contract.get("kind")
if kind not in {"data_contract", "agent_contract", "process_contract"}:
    sys.exit(0)

SCHEMA_BASE = "06-overlay-tde-cl/schemas"
SCHEMA_MAP = {
    "data_contract": "schema_contrato_datos_tde.json",
    "agent_contract": "schema_contrato_agente_ia_tde.json",
    "process_contract": "schema_contrato_proceso_tde.json",
}

schema_path = os.path.join(SCHEMA_BASE, SCHEMA_MAP[kind])
try:
    with open(schema_path, encoding="utf-8") as fh:
        schema = json.load(fh)
except FileNotFoundError:
    print(f"[ERROR] No se encontró el schema para {kind}: {schema_path}")
    raise SystemExit(2)

errors = validate(data, schema)
if errors:
    for error in errors:
        print(f"[ERROR] {fname}: {error}")
    raise SystemExit(2)


def ensure(path_keys: Iterable[str]):
    node: Any = data
    for key in path_keys:
        if isinstance(node, dict) and key in node:
            node = node[key]
        else:
            print(f"[ERROR] Falta campo obligatorio {'/'.join(path_keys)} en {fname}")
            raise SystemExit(3)


CRITICAL = {
    "data_contract": [
        ("contract", "legal", "legal_basis"),
        ("contract", "legal", "eipd_id"),
        ("contract", "overlays", "tde_cl", "dp_21719", "privacy_by_design"),
    ],
    "agent_contract": [
        ("contract", "risk", "level"),
        ("contract", "overlays", "tde_cl", "dp_21719", "eipd_id"),
        ("contract", "overlays", "tde_cl", "authentication"),
    ],
    "process_contract": [
        ("contract", "overlays", "tde_cl", "interoperability", "platform"),
        ("contract", "service_levels", "availability_pct"),
        ("contract", "human_in_the_loop", "rules"),
    ],
}

for keys in CRITICAL.get(kind, []):
    ensure(keys)

print(f"[OK] {fname} válido ✅")
PY

done

exit $fail

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/guias_operativas/GO-006_Expediente_Electronico.md

```markdown
---
id: GO-006-TDE
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../policies/POL-DATOS-21719.yaml
  - ../../03-guias/operativas/GO-003_Manual_Ensamblaje_Artefactos.md
---
# GO‑006 — Expediente Electrónico

**Objetivo:** Asegurar que todo procedimiento admin. se exprese en expediente electrónico con equivalencia funcional, fidelidad y preservación.

**Contenidos mínimos:** ingreso, foliación, orden de actuaciones, reconstrucción por indisponibilidad, preservación y respaldo.

**Evidencia:** hash por pieza, bitácora inmutable y prueba de integridad.

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/guias_operativas/GO-007_Notificacion_Brechas_Datos.md

```markdown
---
id: GO-007-TDE
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../policies/POL-DATOS-21719.yaml
  - ../../05-policies/politica_slo_por_riesgo.yaml
---
# GO‑007 — Notificación de Brechas de Datos

**Cuándo notificar:** destrucción/pérdida/alteración o acceso/comunicación no autorizados con riesgo razonable.
**A quién:** APDP sin dilaciones indebidas; titulares si afecta datos sensibles, menores de 14 o datos financiero‑bancario‑comerciales.
**Qué informar:** naturaleza, categorías/volumen, efectos, medidas adoptadas y plan de mitigación.
**Registros:** libro de incidentes y lecciones aprendidas.

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/guias_operativas/GO-008_Incidentes_IA.md

```markdown
---
id: GO-008-TDE
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../policies/POL-IA-RIESGO-CL.yaml
  - ../../05-policies/POL-ABUSO-LLM.yaml
---
# GO‑008 — Incidentes Graves de IA

**Definición operativa:** evento que provoca o puede provocar daño significativo a personas por decisiones/recomendaciones de IA.
**Canal:** reporte a la APDP; coordinar con ANCI si hay componente de ciberseguridad/infra crítica.
**Acciones:** contención, análisis de causa raíz, kill switch si aplica, remediación y comunicación a afectados.

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/guias_operativas/GO-009_Interoperabilidad_PISEE.md

```markdown
---
id: GO-009-TDE
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../policies/POL-TDE-PLATAFORMAS.yaml
  - ../../02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml
---
# GO‑009 — Interoperabilidad (PISEE) y “sólo una vez”

**Política:** no solicitar a las personas información que ya obra en poder del Estado.
**Implementación:** catálogo DCAT de datasets y OpenAPI 3.1 de servicios; pruebas de interoperabilidad; autorización reforzada para datos sensibles; auditoría de consumo.

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/guias_operativas/GO-010_Calidad_Plataformas_e_Indisponibilidad.md

```markdown
---
id: GO-010-TDE
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../../04-adrs/tde/ADR-tde-202_Calidad_Plataformas_e_Indisponibilidad.md
  - ../../05-policies/politica_slo_por_riesgo.yaml
---
# GO‑010 — Calidad de Plataformas e Indisponibilidad

**SLO mínimos por criticidad**, presupuesto de error, tablero público, protocolo de comunicación de incidentes, plan BCP/DRP probado (GameDays), y re‑ingreso inmediato de actuaciones tras contingencia.

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/policies/POL-DATOS-21719.yaml

```yaml
metadata:
  id: POL-DATOS-21719
  version: 0.1.0
  status: draft
  date: '2025-01-20'
  owner: Unidad Protección de Datos
  related:
    - ../guias_operativas/GO-007_Notificacion_Brechas_Datos.md
    - ../../05-policies/politica_slo_por_riesgo.yaml
policy:
  scope_description: "Todos los ST y productos/servicios que traten datos personales"
  principles: [licitud, finalidad, minimizacion, exactitud, limitacion_conservacion, integridad_confidencialidad, responsabilidad]
  privacy_by_design: true     # art. 14 quáter, Ley 21.719
  privacy_by_default: true    # art. 14 quáter, Ley 21.719
  security_controls:          # art. 14 quinquies, Ley 21.719
    - encryption
    - rbac_abac
    - resiliencia_y_restauracion
    - verificacion_regular
  breach_reporting:           # art. 14 sexies, Ley 21.719
    notify_apdp_within: immediate
    notify_subjects_if: ["datos_sensibles","menores_14","financiero_bancario_comercial"]
  dpia_required_conditions:   # art. 15 ter, Ley 21.719
    - automatizacion_con_efectos_juridicos_o_similares_significativos
    - tratamiento_gran_escala
    - monitoreo_sistematico_en_espacios_publicos
    - tratamiento_datos_sensibles_sin_consentimiento

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/policies/POL-IA-RIESGO-CL.yaml

```yaml
metadata:
  id: POL-IA-RIESGO-CL
  version: 0.1.0
  status: draft
  date: '2025-01-20'
  owner: Unidad IA Gobierno Digital
  related:
    - ../guias_operativas/GO-008_Incidentes_IA.md
policy:
  risk_levels: [INACEPTABLE, ALTO, LIMITADO, MINIMO]
  controls_by_risk:
    INACEPTABLE:
      prohibited: true
    ALTO:
      required_controls:
        - risk_management_system
        - technical_and_user_documentation
        - pre_deployment_testing
        - post_deployment_monitoring
        - kill_switch
        - event_logging_and_model_versioning
    LIMITADO:
      required_controls: [user_transparency]
    MINIMO:
      required_controls: [general_ai_principles]
  incident_reporting:
    authority: APDP

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/policies/POL-TDE-PLATAFORMAS.yaml

```yaml
metadata:
  id: POL-TDE-PLATAFORMAS
  version: 0.1.0
  status: draft
  date: '2025-01-20'
  owner: Unidad Gobierno Digital
  related:
    - ../guias_operativas/GO-009_Interoperabilidad_PISEE.md
policy:
  scope_description: "Integraciones oficiales del Estado"
  required_integrations:
    identity: ClaveUnica
    signature: FirmaGob
    documentary_record: DocDigital
    interoperability: PISEE
    notifications: Notificador/DDU
  service_quality:
    agreed_downtime_allowed: true
    mandatory_bcp_drp_plan: true
    contingency_testing_frequency: semestral

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/schemas/schema_contrato_agente_ia_tde.json

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "required": ["metadata", "contract"],
  "properties": {
    "metadata": {
      "type": "object",
      "required": ["id", "version", "status", "date", "owner", "related"],
      "properties": {
        "id": {"type": "string"},
        "version": {"type": "string"},
        "status": {"type": "string"},
        "date": {"type": "string"},
        "owner": {"type": "string"},
        "related": {"type": "array", "items": {"type": "string"}}
      }
    },
    "contract": {
      "type": "object",
      "required": ["kind", "agent_id", "hcai_purpose", "interaction_mode", "legal", "risk", "observability", "overlays"],
      "properties": {
        "kind": {"const": "agent_contract"},
        "agent_id": {"type": "string"},
        "hcai_purpose": {"type": "string"},
        "interaction_mode": {"type": "string"},
        "legal": {
          "type": "object",
          "required": ["legal_purpose", "personal_data_processing", "legal_basis"],
          "properties": {
            "legal_purpose": {"type": "string"},
            "personal_data_processing": {"type": ["boolean", "string"]},
            "legal_basis": {"type": "array", "items": {"type": "string"}}
          }
        },
        "risk": {
          "type": "object",
          "required": ["level", "user_transparency", "post_deployment_monitoring", "kill_switch"],
          "properties": {
            "level": {"type": "string"},
            "user_transparency": {"type": "boolean"},
            "post_deployment_monitoring": {"type": "boolean"},
            "kill_switch": {"type": "boolean"}
          }
        },
        "observability": {
          "type": "object",
          "required": ["opentelemetry_enabled", "minimum_log_fields"],
          "properties": {
            "opentelemetry_enabled": {"type": "boolean"},
            "minimum_log_fields": {"type": "array", "items": {"type": "string"}}
          }
        },
        "overlays": {
          "type": "object",
          "properties": {
            "tde_cl": {
              "type": "object",
              "required": ["authentication", "interoperability", "notification", "dp_21719"],
              "properties": {
                "authentication": {"type": "string"},
                "interoperability": {"type": "string"},
                "notification": {"type": "string"},
                "dp_21719": {
                  "type": "object",
                  "required": ["privacy_by_design", "security_measures", "eipd_id", "governance_gaps"],
                  "properties": {
                    "privacy_by_design": {"type": "boolean"},
                    "security_measures": {"type": "array", "items": {"type": "string"}},
                    "eipd_id": {"type": "string"},
                    "governance_gaps": {"type": "string"}
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/schemas/schema_contrato_datos_tde.json

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "required": ["metadata", "contract"],
  "properties": {
    "metadata": {
      "type": "object",
      "required": ["id", "version", "status", "date", "owner", "related"],
      "properties": {
        "id": {"type": "string"},
        "version": {"type": "string"},
        "status": {"type": "string"},
        "date": {"type": "string"},
        "owner": {"type": "string"},
        "related": {"type": "array", "items": {"type": "string"}}
      }
    },
    "contract": {
      "type": "object",
      "required": ["kind", "product_name", "owning_org", "legal", "retention", "audit", "security_measures", "overlays"],
      "properties": {
        "kind": {"const": "data_contract"},
        "product_name": {"type": "string"},
        "owning_org": {"type": "string"},
        "legal": {
          "type": "object",
          "required": ["legal_basis", "privacy_by_design", "data_protection_officer_contact", "eipd_id"],
          "properties": {
            "legal_basis": {"type": "string"},
            "privacy_by_design": {"type": "boolean"},
            "data_protection_officer_contact": {"type": "string"},
            "eipd_id": {"type": "string"}
          }
        },
        "retention": {
          "type": "object",
          "required": ["months"],
          "properties": {
            "months": {"type": ["integer", "string"]}
          }
        },
        "audit": {
          "type": "object",
          "required": ["immutable_log", "hashed_records"],
          "properties": {
            "immutable_log": {"type": "boolean"},
            "hashed_records": {"type": "boolean"}
          }
        },
        "security_measures": {
          "type": "array",
          "items": {"type": "string"}
        },
        "breach_response": {
          "type": "object",
          "properties": {
            "playbook": {"type": "string"},
            "notification_window": {"type": "string"}
          }
        },
        "overlays": {
          "type": "object",
          "properties": {
            "tde_cl": {
              "type": "object",
              "required": ["electronic_support", "interoperability_channel", "electronic_dossier", "electronic_notification", "dp_21719"],
              "properties": {
                "electronic_support": {"type": "boolean"},
                "interoperability_channel": {"type": "string"},
                "electronic_dossier": {"type": "boolean"},
                "electronic_notification": {"type": "boolean"},
                "dp_21719": {
                  "type": "object",
                  "required": ["privacy_by_design", "security_measures", "eipd_id", "governance_gaps"],
                  "properties": {
                    "privacy_by_design": {"type": "boolean"},
                    "security_measures": {"type": "array", "items": {"type": "string"}},
                    "eipd_id": {"type": "string"},
                    "governance_gaps": {"type": "string"}
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/schemas/schema_contrato_proceso_tde.json

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "required": ["metadata", "contract"],
  "properties": {
    "metadata": {
      "type": "object",
      "required": ["id", "version", "status", "date", "owner", "related"],
      "properties": {
        "id": {"type": "string"},
        "version": {"type": "string"},
        "status": {"type": "string"},
        "date": {"type": "string"},
        "owner": {"type": "string"},
        "related": {"type": "array", "items": {"type": "string"}}
      }
    },
    "contract": {
      "type": "object",
      "required": ["kind", "process_name", "overlays", "service_levels", "human_in_the_loop", "audit"],
      "properties": {
        "kind": {"const": "process_contract"},
        "process_name": {"type": "string"},
        "overlays": {
          "type": "object",
          "properties": {
            "tde_cl": {
              "type": "object",
              "required": ["base_law", "regulation", "technical_standards", "electronic_dossier", "interoperability", "notification"],
              "properties": {
                "base_law": {"type": "string"},
                "regulation": {"type": "string"},
                "technical_standards": {"type": "array", "items": {"type": "string"}},
                "electronic_dossier": {"type": "boolean"},
                "interoperability": {
                  "type": "object",
                  "required": ["platform", "once_only_principle", "sensitive_data_authorization_logged"],
                  "properties": {
                    "platform": {"type": "string"},
                    "once_only_principle": {"type": "boolean"},
                    "sensitive_data_authorization_logged": {"type": "boolean"}
                  }
                },
                "notification": {
                  "type": "object",
                  "required": ["platform", "event_logging_enabled"],
                  "properties": {
                    "platform": {"type": "string"},
                    "event_logging_enabled": {"type": "boolean"}
                  }
                }
              }
            }
          }
        },
        "service_levels": {
          "type": "object",
          "required": ["availability_pct", "latency_p95", "recovery_time_objective_hours", "recovery_point_objective_minutes"],
          "properties": {
            "availability_pct": {"type": "number"},
            "latency_p95": {"type": "string"},
            "recovery_time_objective_hours": {"type": "number"},
            "recovery_point_objective_minutes": {"type": "number"}
          }
        },
        "human_in_the_loop": {
          "type": "object",
          "required": ["queues", "rules"],
          "properties": {
            "queues": {"type": "array", "items": {"type": "string"}},
            "rules": {"type": "array", "items": {"type": "string"}}
          }
        },
        "audit": {
          "type": "object",
          "required": ["activity_log", "retention"],
          "properties": {
            "activity_log": {"type": "string"},
            "retention": {"type": "string"}
          }
        }
      }
    }
  }
}

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/templates/ST_TDE-CL_template.md

```markdown
---
id: TPL-ST-TDE-001
version: 1.0.0
status: draft
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../../02-artefactos/portafolio/TPL-PORT-001_Ficha_Portafolio.yaml
---
# ST_TDE‑CL — Plantilla de Ficha de Sistema de Trabajo

## 1. Identificación
- Código ST: ST-<CODIGO>
- Nombre: <NOMBRE>
- Dueño de servicio (unidad): <UNIDAD>
- EFV patrocinadora: <EFV>

## 2. Mandato y Normativa
- LTDE 21.180: medios electrónicos, expediente, notificación, interoperabilidad (NT asociadas)
- Ley 21.658 (SGD): plataformas compartidas
- Ley 21.719 (anticipada): privacidad por diseño/defecto, EIPD, brechas
- Proyecto Ley IA (anticipada): riesgo, transparencia, monitoreo, kill switch

## 3. Plataformas e Integraciones
- Identidad: ClaveÚnica
- Firma: FirmaGob
- Expediente/Documental: DocDigital
- Interoperabilidad: PISEE
- Notificaciones: Notificador/DDU

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/templates/contrato_agente_ia_tde.yaml

```yaml
metadata:
  id: TPL-AGENT-TDE-001
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA TDE-CL Team
  related:
    - ../policies/POL-IA-RIESGO-CL.yaml
contract:
  kind: agent_contract
  agent_id: "<AG-XXX>"
  hcai_purpose: "<ASSIST|AUGMENT|...>"
  interaction_mode: HUMAN_IN_THE_LOOP
  legal:
    legal_purpose: "<mandato legal>"
    personal_data_processing: "<true|false>"
    legal_basis: ["<ley/articulo>"]
  risk:
    level: "<INACEPTABLE|ALTO|LIMITADO|MINIMO>"
    user_transparency: true
    post_deployment_monitoring: true
    kill_switch: true
  observability:
    opentelemetry_enabled: true
    minimum_log_fields: [trace_id, st_id, model_version, prompts_hash, incident_flag]
  overlays:
    tde_cl:
      authentication: "ClaveUnica|OIDC institucional"
      interoperability: PISEE
      notification: Notificador/DDU
      dp_21719:
        privacy_by_design: true
        security_measures: ["encryption", "dlp", "regular_verification"]
        eipd_id: "<EIPD-XXX|no_aplica>"
        governance_gaps: "GO-007_Notificacion_Brechas_Datos"

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/templates/contrato_datos_tde.yaml

```yaml
metadata:
  id: TPL-DATA-TDE-001
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA TDE-CL Team
  related:
    - ../../05-policies/POL-DATOS-21719.yaml
contract:
  kind: data_contract
  product_name: "<dataset|expediente>"
  owning_org: "<servicio u OAE>"
  legal:
    legal_basis: "<ley/articulo>"
    privacy_by_design: true
    data_protection_officer_contact: "<correo institucional>"
    eipd_id: "<EIPD-XXX|no_aplica>"
  retention:
    months: "<N>"
  audit:
    immutable_log: true
    hashed_records: true
  security_measures: ["encryption", "rbac_abac", "regular_reviews"]
  breach_response:
    playbook: "GO-007_Notificacion_Brechas_Datos"
    notification_window: immediate
  overlays:
    tde_cl:
      electronic_support: true
      interoperability_channel: PISEE
      electronic_dossier: true
      electronic_notification: true
      dp_21719:
        privacy_by_design: true
        security_measures: ["encryption", "rbac_abac", "regular_verification"]
        eipd_id: "<EIPD-XXX|no_aplica>"
        governance_gaps: "<referencia_politica|no_aplica>"

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/templates/contrato_proceso_tde.yaml

```yaml
metadata:
  id: TPL-PROCESS-TDE-001
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA TDE-CL Team
  related:
    - ../policies/POL-TDE-PLATAFORMAS.yaml
contract:
  kind: process_contract
  process_name: "<nombre_proceso>"
  overlays:
    tde_cl:
      base_law: "Ley 21.180"
      regulation: "DS 4/2020"
      technical_standards: ["Autenticacion", "Documentos_Expedientes", "Interoperabilidad", "Notificaciones", "Seguridad", "Calidad_Plataformas"]
      electronic_dossier: true
      interoperability:
        platform: PISEE
        once_only_principle: true
        sensitive_data_authorization_logged: true
      notification:
        platform: Notificador/DDU
        event_logging_enabled: true
  service_levels:
    availability_pct: 99.5
    latency_p95: PT0.5S
    recovery_time_objective_hours: 4
    recovery_point_objective_minutes: 30
  human_in_the_loop:
    queues: ["aprobacion.excepciones"]
    rules:
      - "if risk in ['R2','R3'] or confidence<0.85 then require_human_review"
  audit:
    activity_log: immutable
    retention: P5Y

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/templates/contrato_suministro_tde.yaml

```yaml
metadata:
  id: TPL-SUPPLY-TDE-001
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA TDE-CL Team
  related:
    - ../policies/POL-TDE-PLATAFORMAS.yaml
contract:
  kind: supply_contract
  service_name: "<API/Plataforma>"
  scope: "Identidad|Interoperabilidad|Documental|Notificador|Firma"
  service_levels:
    availability_pct: 99.5
    latency_p95_ms: 800
    recovery_time_objective_hours: 4
    recovery_point_objective_minutes: 30
  continuity:
    dr_bc_plan: true
    contingency_testing: semestral # Trad: periodicidad de pruebas
  security:
    siem_integration: true
    encryption_in_transit: TLS1.2+
    encryption_at_rest: AES-256
  audit:
    audit_rights_granted: true
    reporting_frequency: mensual
  limits:
    rate_limit_rps: 50
    monthly_quota: 1000000

```

### productos/ASTA-SIGMA/06-overlay-tde-cl/templates/presentacion/Informe_Arquitectura_TDE-CL.md

```markdown
---
id: TPL-PRES-TDE-001
version: 1.0.0
status: draft
date: 2025-01-20
owner: ASTA-SIGMA TDE-CL Team
related:
  - ../ST_TDE-CL_template.md
---
# Informe de Arquitectura — TDE‑Chile (Plantilla)

## 1. Resumen ejecutivo

Objetivo del servicio, valor público, riesgos y dependencias.

## 2. Cumplimiento TDE y plataformas SGD

Matriz LTDE/NT ↔ controles ↔ evidencias. Integraciones: ClaveÚnica, PISEE, DocDigital, Notificador.

## 3. Datos y privacidad (Ley 21.719)

Base legal, EIPD (si aplica), medidas de seguridad y plan de brechas.

## 4. IA responsable (proyecto de Ley de IA)

Nivel de riesgo, transparencia, monitoreo pos‑despliegue y kill switch.

## 5. SLO/SLI, continuidad y observabilidad

SLO objetivo, presupuesto de error, OTel, DR/BCP y resultados de GameDays.

## 6. Decisiones (ADRs) y contrato(s) computables

Listado y vínculos a ADRs/contratos relevantes.

```

### productos/ASTA-SIGMA/07-org/governance/RACI.md

```markdown
---
id: ORG-RACI-001
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Governance Team
related:
  - ../comite_tic_ctd.md
  - ../../01-manual/MANUAL_ASTA-SIGMA.md
---
# Matriz RACI — Transformación Digital

| Actividad                               | Comité TIC | CTD | DPO | CISO | Unidad Dueña | EFV |
|-----------------------------------------|:----------:|:---:|:---:|:----:|:------------:|:---:|
| Aprobación políticas TDE/DP/IA          |     A      |  R  |  C  |  C   |      C       |  I  |
| Priorización ST a digitalizar           |     A      |  R  |  I  |  C   |      R       |  R  |
| EIPD (si aplica)                        |     C      |  R  |  A  |  C   |      R       |  I  |
| Incidente de datos/IA                   |     I      |  R  |  A  |  A   |      C       |  I  |
| Integración plataformas compartidas     |     C      |  R  |  C  |  R   |      R       |  I  |
| Revisión de Valor y Capacidad (RVC)     |     A      |  R  |  I  |  I   |      C       |  R  |

```

### productos/ASTA-SIGMA/07-org/governance/comite_tic_ctd.md

```markdown
---
id: ORG-GOV-CTD
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Governance Team
related:
  - RACI.md
  - ../policies_org/POL-ORG-SEGURIDAD.md
---
# Comité TIC + Coordinación TDE (CTD)

**Objetivo:** dirigir la transformación digital, asegurar cumplimiento TDE/SGD, y priorizar inversiones alineadas a EGD‑2030.

**Composición mínima:** Autoridad Superior (preside), CTD, Jefatura TIC, DPO, CISO, Jurídico, Finanzas, Operaciones.

**Cadencia:** mensual (ordinaria) y extraordinaria ante incidentes o hitos regulatorios.

**Atribuciones:** aprobar políticas tecnológicas y de datos, priorizar portafolio, resolver impedimentos, patrocinar integraciones con plataformas compartidas del Estado.

```

### productos/ASTA-SIGMA/07-org/mappings/efv_to_st.yaml

```yaml
# Completa con tus primeros ST (p. ej. ST-TRAMITE-001)
metadata:
  id: MAP-EFV-ST
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA Governance Team
  related:
    - ../value_streams/EFV-EJEMPLO.yaml
    - ../../08-inventory/st/ST-TRAMITE-001.md
mappings:
  - value_stream_id: EFV-EJEMPLO
    systems_of_work: []

```

### productos/ASTA-SIGMA/07-org/mappings/units_to_efv.yaml

```yaml
metadata:
  id: MAP-UNIT-EFV
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA Governance Team
  related:
    - ../units/UN-EJEMPLO.yaml
    - ../value_streams/EFV-EJEMPLO.yaml
mappings:
  - unit_id: UN-EJEMPLO
    value_streams: [EFV-EJEMPLO]

```

### productos/ASTA-SIGMA/07-org/organization.yaml

```yaml
metadata:
  id: ORG-ROOT
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA Governance Team
  related:
    - governance/RACI.md
    - governance/comite_tic_ctd.md
organization:
  org_id: ORG-SIGLA
  name: "Nombre Oficial de la Organización" # Trad: nombre oficial
  legal_mandate: ["Ley 18.575", "Ley 21.658", "Ley 21.180"]
  key_contacts:
    ctd: "Nombre CTD <ctd@org.cl>"
    dpo: "Nombre DPO <dpo@org.cl>"
    ciso: "Nombre CISO <ciso@org.cl>"
principles:
  egd2030: [digital_por_diseno, centrado_en_personas, gobierno_integrado]
  mgde: [datos_activo_estrategico, catalogo_mandatorio, responsable_por_dato]
notes: |
  Ajusta esta ficha como “fuente única” de identidad institucional del marco.

```

### productos/ASTA-SIGMA/07-org/policies_org/POL-ORG-SEGURIDAD.md

```markdown
---
id: POL-ORG-SEGURIDAD
version: 1.0.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Security Office
related:
  - ../governance/RACI.md
  - ../../05-policies/POL-TRAZA-IA.yaml
---
# Política Organizacional de Seguridad (extracto)

- Modelo de control: Zero‑Trust + RBAC/ABAC.
- Observabilidad: OpenTelemetry (trazas, métricas, logs).
- Continuidad: BCP/DRP probado semestralmente (GameDays).
- Gestión de proveedores: contratos con RTO/RPO, cláusulas de auditoría y pruebas de contingencia.

```

### productos/ASTA-SIGMA/07-org/units/UN-EJEMPLO.yaml

```yaml
metadata:
  id: UN-EJEMPLO
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA Governance Team
  related:
    - ../organization.yaml
unit:
  unit_id: UN-EJEMPLO
  name: "División/Departamento de Ejemplo" # Trad: nombre de la unidad
  capabilities: [gestion_actos_adm, notificaciones, compliance]
  lead_contact: "Jefe/a Unidad <jefatura@org.cl>"

```

### productos/ASTA-SIGMA/07-org/value_streams/EFV-EJEMPLO.yaml

```yaml
metadata:
  id: EFV-EJEMPLO
  version: 1.0.0
  status: draft
  date: 'YYYY-MM-DD'
  owner: ASTA-SIGMA Governance Team
  related:
    - ../units/UN-EJEMPLO.yaml
value_stream:
  value_stream_id: EFV-EJEMPLO
  mission: "Entregar servicios digitales simples e inclusivos"
  key_metrics: [tiempo_ciclo, nps, tasa_exito]
  supporting_units: [UN-EJEMPLO]

```

### productos/ASTA-SIGMA/08-inventory/agentes_ia/AG-TRAMITE-001.yaml

```yaml
metadata:
  id: AG-TRAMITE-001
  version: 1.1.0
  status: active
  date: '2025-09-16'
  owner: Equipo Trámite Digital
  related:
    - ../st/ST-TRAMITE-001.md
contract:
  kind: agent_contract
  agent_id: AG-TRAMITE-001
  hcai_purpose: ASSIST
  interaction_mode: HUMAN_IN_THE_LOOP
  legal:
    legal_purpose: "Apoyo a instrucción de expediente"
    personal_data_processing: true
    legal_basis: ["Ley 19.880", "Ley 19.628"]
  overlays:
    tde_cl:
      authentication: ClaveUnica
      interoperability: PISEE
      notification: Notificador/DDU
      dp_21719:
        privacy_by_design: true
        security_measures: ["encryption", "dlp", "regular_verification"]
        eipd_id: "EIPD-2025-001"
        governance_gaps: "GO-007_Notificacion_Brechas_Datos"
  risk:
    level: LIMITED
    user_transparency: true
    post_deployment_monitoring: true
    kill_switch: true
  observability:
    opentelemetry_enabled: true
    minimum_log_fields: [trace_id, st_id, model_version, prompts_hash, incident_flag]

```

### productos/ASTA-SIGMA/08-inventory/datos/DATA-EXPEDIENTE-001.yaml

```yaml
metadata:
  id: DATA-EXPEDIENTE-001
  version: 1.0.0
  status: draft
  date: '2025-01-20'
  owner: Equipo Trámite Digital
  related:
    - ../st/ST-TRAMITE-001.md
contract:
  kind: data_contract
  product_name: "Expediente Subsidio X"
  owning_org: ORG-SIGLA
  legal:
    legal_basis: "Ley 19.880; Ley sectorial X"
    privacy_by_design: true # Trad: privacidad por diseño
    data_protection_officer_contact: "dpo@org.cl"
    eipd_id: "EIPD-2025-001"
  retention:
    months: 60
  audit:
    immutable_log: true
    hashed_records: true
  security_measures: ["encryption", "rbac_abac", "regular_reviews"]
  breach_response:
    playbook: "GO-007_Notificacion_Brechas_Datos"
    notification_window: immediate
  overlays:
    tde_cl:
      electronic_support: true
      interoperability_channel: PISEE
      electronic_dossier: true
      electronic_notification: true
      dp_21719:
        privacy_by_design: true
        security_measures: ["encryption", "rbac_abac", "regular_reviews"]
        eipd_id: "EIPD-2025-001"
        governance_gaps: "GO-007_Notificacion_Brechas_Datos"

```

### productos/ASTA-SIGMA/08-inventory/st/ST-TRAMITE-001.md

```markdown
---
id: ST-TRAMITE-001
version: 1.0.0
status: draft
date: 2025-01-20
owner: Equipo Trámite Digital
related:
  - ../../07-org/value_streams/EFV-EJEMPLO.yaml
  - ../../02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml
---
# ST-TRAMITE-001 — Solicitud Subsidio X

## Mandato y Normativa
- LTDE 21.180 (medios electrónicos, expediente, notificación, interoperabilidad)
- NT: Autenticación, Documentos/Expedientes, Interoperabilidad, Notificaciones, Seguridad, Calidad de Plataformas
- Ley 21.719 (anticipada): privacidad por diseño/defecto, EIPD, brechas
- Proyecto Ley IA (anticipada): riesgo <ALTO|LIMITADO>, transparencia/monitoreo/kill-switch

## Plataformas SGD
- ClaveÚnica, PISEE, DocDigital, Notificador/DDU

## Accesibilidad/UX
- WCAG 2.2 AA; Lenguaje Claro; métricas de experiencia (MESU)

## Métricas y Evidencias (Δ)
- SLO: disponibilidad 99.5%, latencia p95 < 500ms
- Evidencia: logs inmutables, trazas OTel, hash de expediente

```

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

### productos/ASTA-SIGMA/README.md

```markdown
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

```

