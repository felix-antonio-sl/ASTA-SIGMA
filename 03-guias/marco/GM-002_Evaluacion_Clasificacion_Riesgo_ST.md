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
