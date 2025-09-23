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
