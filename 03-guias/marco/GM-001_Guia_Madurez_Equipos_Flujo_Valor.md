---
id: GM-001
version: 1.0.0
status: active
date: 2025-09-15
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - GM-002
---
# GM-001: Guía de Madurez para Equipos de Flujo de Valor

## Propósito

El marco ASTA-SIGMA propone un cambio cultural desde una operación basada en "proyectos" a una basada en flujos de valor continuos operados por equipos estables y multidisciplinarios. Esta guía proporciona un modelo de madurez para ayudar a los equipos a autoevaluar su estado actual, identificar áreas de mejora y trazar un camino para operar de manera efectiva dentro del marco.

## Modelo de Madurez

Se evalúan cuatro dimensiones clave a través de tres niveles de madurez:

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
| **Flujo de Trabajo** | - El trabajo se gestiona en silos funcionales (análisis, desarrollo, pruebas).<br>- La entrega de valor es infrecuente y en grandes lotes (despliegues mensuales o trimestrales).<br>- Fuerte dependencia de procesos de control de cambio (CAB) externos. |
| **Enfoque en el Valor** | - El éxito se mide por el cumplimiento de plazos y la entrega de funcionalidades (`output`).<br>- No existen métricas de valor público o de negocio (KPIs/OKRs), ni SLOs definidos. |
| **Capacidades Técnicas** | - El testing es mayormente manual y realizado al final del ciclo.<br>- No existe un pipeline de Integración Continua (CI).<br>- Los despliegues son manuales, riesgosos y requieren de coordinación extensiva. |

### Nivel 2: Equipo Orientado a Productos (Product-Oriented)

| Dimensión | Características Nivel 2 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El equipo comparte responsabilidad sobre el roadmap.<br>- Existe un Product Owner empoderado que prioriza en base a valor público.<br>- Stakeholders participan activamente en demos y revisiones. |
| **Flujo de Trabajo** | - Se trabaja con un tablero unificado (Kanban/Scrum).<br>- Entregas quincenales con despliegues semi-automatizados.<br>- Gestión de dependencias explícita mediante contratos. |
| **Enfoque en el Valor** | - Se monitorean KPIs de resultado y SLO.<br>- Se reporta valor generado en cada revisión RVC.<br>- El backlog prioriza iniciativas con hipótesis de impacto. |
| **Capacidades Técnicas** | - Pipelines CI con pruebas automáticas básicas.<br>- Controles mínimos de seguridad y cumplimiento activados.<br>- Telemetría básica y tableros de salud. |

### Nivel 3: Equipo Orientado a Valor (Value-Oriented)

| Dimensión | Características Nivel 3 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El equipo gestiona end-to-end desde discovery a operación.<br>- Toma decisiones de inversión dentro de guardrails.<br>- Colabora con otros equipos usando contratos computables. |
| **Flujo de Trabajo** | - Flujo continuo con despliegues on-demand.<br>- Automatización de pruebas, seguridad y gobernanza como código.<br>- Gestión activa de deuda técnica con métricas Δ. |
| **Enfoque en el Valor** | - Impacto evidenciado en métricas de valor público.<br>- Los OKR se retroalimentan de la observabilidad.<br>- Se experimenta con features controladas y pruebas A/B. |
| **Capacidades Técnicas** | - Pipelines con gates de gobernanza (datos, servicios, IA, accesibilidad).<br>- Chaos engineering y game days recurrentes.<br>- Telemetría rica, alertas automáticas y respuesta colaborativa. |

## Cómo usar esta guía

1. **Autoevaluación facilitada:** dedicar dos horas para puntuar cada dimensión como equipo.
2. **Diagnóstico honesto:** documentar evidencia que respalde el nivel declarado.
3. **Plan de evolución:** seleccionar una o dos prácticas foco por trimestre y registrarlas en la ficha del ST.
4. **Seguimiento continuo:** revisar el avance en cada ceremonia RVC y ajustar el plan.
