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
