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
