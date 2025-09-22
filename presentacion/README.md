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
