---
id: GM-001
version: 1.0.0
status: active
date: 2025-09-15
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
---
# Guía de Madurez para Equipos de Flujo de Valor


## Propósito

El marco ASTA-SIGMA propone un cambio cultural desde una operación basada en "proyectos" a una basada en "flujos de valor continuos" operados por equipos estables y multidisciplinarios. Esta transición requiere que los equipos desarrollen nuevas capacidades y formas de trabajo.

Esta guía proporciona un modelo de madurez para ayudar a los equipos a autoevaluar su estado actual, identificar áreas de mejora y trazar un camino para operar de manera efectiva dentro del marco ASTA-SIGMA. El objetivo no es que todos los equipos alcancen el Nivel 3 en todas las dimensiones, sino que sean conscientes de sus capacidades y limitaciones.

## Modelo de Madurez

Se evalúan cuatro dimensiones clave a través de tres niveles de madurez.

**Dimensiones:**

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
| **Flujo de Trabajo** | - El trabajo se gestiona en silos funcionales (análisis, desarrollo, pruebas).
- La entrega de valor es infrecuente y en grandes lotes (despliegues mensuales o trimestrales).
- Fuerte dependencia de procesos de control de cambio (CAB) externos. |
| **Enfoque en el Valor** | - El éxito se mide por el cumplimiento de plazos y la entrega de funcionalidades (`output`).
- No existen métricas de valor público o de negocio (KPIs/OKRs), ni SLOs definidos. |
| **Capacidades Técnicas** | - El testing es mayormente manual y realizado al final del ciclo.
- No existe un pipeline de Integración Continua (CI).
- Los despliegues son manuales, riesgosos y requieren de coordinación extensiva. |

### Nivel 2: Equipo de Producto Emergente (Emerging Product)

*El equipo comienza a operar como una unidad cohesionada, con un entendimiento compartido del producto o servicio que construye y su impacto.*

| Dimensión | Características Nivel 2 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El equipo es dueño del "cómo" (decisiones técnicas), pero el "qué" (prioridades) aún es fuertemente influenciado externamente.<br><br>- El Product Owner está empoderado para gestionar el backlog.<br>- Hay interacción regular con los usuarios para obtener feedback. |
| **Flujo de Trabajo** | - El equipo es multifuncional y trabaja de forma colaborativa en un backlog unificado (Kanban/Scrum).
- Las entregas son más frecuentes (semanales/quincenales).
- El proceso de despliegue está parcialmente automatizado. |
| **Enfoque en el Valor** | - El éxito comienza a medirse por el impacto en el usuario y el negocio (`outcome`).
- Se definen y monitorean los primeros SLOs para los servicios críticos.
- Se realizan las primeras `Revisiones de Valor y Capacidad (RVC)`, aunque de forma incipiente. |
| **Capacidades Técnicas** | - Se implementa un pipeline de Integración Continua (CI) que automatiza la construcción y las pruebas unitarias.
- Se adopta el versionamiento de artefactos (código, contratos) en Git.
- Se comienzan a escribir pruebas automatizadas (unitarias, integración). |

### Nivel 3: Equipo de Flujo de Valor (Value Stream)

*El equipo opera como una unidad de negocio autónoma, dueña de su dominio de punta a punta, y está obsesionada con la optimización del flujo de valor hacia el ciudadano.*

| Dimensión | Características Nivel 3 |
| :--- | :--- |
| **Propiedad y Autonomía** | - El equipo es dueño del "qué" y del "cómo". Tienen autonomía para descubrir y resolver los problemas de los usuarios dentro de su mandato (`Ficha de ST`).<br><br>- El Product Owner actúa como un "mini-CEO" del producto.<br>- La experimentación y el aprendizaje son parte central del proceso. |
| **Flujo de Trabajo** | - El equipo practica el Despliegue Continuo (CD). Las ideas pueden pasar a producción en días u horas.
- El equipo es dueño de la operación de su servicio en producción (`You build it, you run it`).
- El flujo de trabajo está optimizado para la velocidad y la seguridad. |
| **Enfoque en el Valor** | - El éxito se mide exclusivamente por el `outcome` (progreso de OKRs/KPIs) y el cumplimiento de SLOs.
- La `Revisión de Valor y Capacidad (RVC)` es un diálogo de inversión estratégico y basado en datos.
- El equipo gestiona activamente su `Presupuesto de Error` para balancear innovación y fiabilidad. |
| **Capacidades Técnicas** | - Prácticas de CI/CD maduras.
- Infraestructura como Código (IaC).
- Observabilidad profunda (métricas, logs, trazas) del sistema en producción.
- Los `Contratos Computables` son validados automáticamente en el pipeline. |

## 3. Herramienta de Autoevaluación de Madurez

Utilice el siguiente checklist en las retrospectivas trimestrales para evaluar el nivel de madurez actual del equipo. Marque la afirmación que mejor describa la realidad del equipo en cada dimensión.

#### Dimensión: Propiedad y Autonomía

- [ ] **Nivel 1:** El "qué" y el "cómo" son definidos externamente. El equipo tiene poca interacción con los usuarios finales.
- [ ] **Nivel 2:** El equipo es dueño del "cómo" (decisiones técnicas). El Product Owner gestiona el backlog y hay interacción regular con usuarios.
- [ ] **Nivel 3:** El equipo es dueño del "qué" y del "cómo". Tienen autonomía para descubrir y resolver problemas, y la experimentación es central.

#### Dimensión: Flujo de Trabajo

- [ ] **Nivel 1:** El trabajo se gestiona en silos. Las entregas son infrecuentes y en grandes lotes.
- [ ] **Nivel 2:** El equipo es multifuncional y trabaja de forma colaborativa. Las entregas son frecuentes (semanales/quincenales).
- [ ] **Nivel 3:** El equipo practica el Despliegue Continuo (CD). El flujo está optimizado para la velocidad y la seguridad.

#### Dimensión: Enfoque en el Valor

- [ ] **Nivel 1:** El éxito se mide por el cumplimiento de plazos (`output`). No hay SLOs ni KPIs de negocio.
- [ ] **Nivel 2:** El éxito se mide por el impacto (`outcome`). Se definen y monitorean los primeros SLOs.
- [ ] **Nivel 3:** El éxito se mide exclusivamente por OKRs/KPIs y SLOs. El equipo gestiona su Presupuesto de Error.

#### Dimensión: Capacidades Técnicas

- [ ] **Nivel 1:** El testing es manual. No hay pipeline de CI. Los despliegues son manuales y riesgosos.
- [ ] **Nivel 2:** Se implementa un pipeline de CI. Se adopta Git y se escriben pruebas automatizadas.
- [ ] **Nivel 3:** Prácticas de CI/CD maduras, Infraestructura como Código (IaC) y Observabilidad profunda. Los contratos se validan automáticamente.

## 4. Catálogo de Prácticas de Mejora

Una vez identificado el nivel actual, utilice este catálogo para construir una hoja de ruta de mejora.

**Para pasar de Nivel 1 a Nivel 2:**

1. **Técnico:** Implementar Git y un pipeline de CI básico. Empezar a escribir pruebas unitarias.
2. **Flujo:** Adoptar un tablero Kanban/Scrum unificado. Apuntar a entregas quincenales.
3. **Valor:** Realizar el `Taller de Diseño de ST` para definir los primeros SLOs. Crear un dashboard de monitoreo.
4. **Autonomía:** Empoderar al Product Owner para que sea la única fuente de priorización del backlog.

**Para pasar de Nivel 2 a Nivel 3:**

1. **Técnico:** Automatizar el despliegue a producción (CD). Implementar IaC. Instrumentar el código con telemetría (Observabilidad).
2. **Flujo:** Optimizar el pipeline para reducir el tiempo de ciclo (de commit a producción). Implementar guardias (`on-call`) para el servicio.
3. **Valor:** Definir `Presupuestos de Error` para los SLOs. Conectar las métricas del equipo a los OKRs de la organización. Iniciar prácticas de FinOps.
4. **Autonomía:** Delegar en el equipo la gestión de su `Presupuesto de Error` para balancear innovación y fiabilidad. Fomentar la experimentación.
