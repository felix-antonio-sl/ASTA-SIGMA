---
id: GO-002
version: 1.0.0
status: active
date: 2025-09-15
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - GO-003
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
