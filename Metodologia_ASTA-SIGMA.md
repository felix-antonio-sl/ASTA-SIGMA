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