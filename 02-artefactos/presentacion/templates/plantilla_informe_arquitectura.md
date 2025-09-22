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
