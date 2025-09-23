# Catálogo de Artefactos Computables ASTA-SIGMA

Este directorio contiene los artefactos, plantillas y modelos de datos que componen el "código fuente" del marco ASTA-SIGMA. Están diseñados para ser versionados, reutilizables y, en muchos casos, validados automáticamente en pipelines de CI/CD.

## Estructura del Directorio

- **/arquitectura**: Contiene los Registros de Decisión de Arquitectura (ADRs) que documentan las decisiones técnicas y de diseño más importantes del marco.
- **/diseno_experiencia**: Artefactos relacionados con la Experiencia de Usuario (UX), como plantillas para Fichas de UX, que ayudan a centrar el diseño en el usuario.
- **/guias_marco**: Guías prescriptivas de alto nivel que establecen los estándares y reglas de gobernanza.
- **/guias_operativas**: Runbooks y procedimientos tácticos para la operación diaria de los Sistemas de Trabajo (ST).
- **/presentacion**: Plantillas de presentación para ceremonias clave como la Revisión de Valor y Capacidad (RVC).

## Propósito

El objetivo de mantener estos artefactos como "código" es habilitar la **Gobernanza como Código**. Al definir contratos, políticas y guías en formatos estructurados (como Markdown y YAML), podemos:

1. **Automatizar la Validación:** Usar linters y esquemas para asegurar que los artefactos son correctos.
2. **Gestionar el Cambio:** Usar Git para controlar las versiones y entender la evolución del marco.
3. **Mejorar la Trazabilidad:** Vincular decisiones de arquitectura (ADRs) con las guías que las implementan y los contratos que las hacen cumplir.

Consulte el [MANUAL ASTA-SIGMA](../docs/MANUAL_ASTA-SIGMA.md) para una explicación conceptual detallada de cómo estos artefactos se utilizan en el modelo operativo.
