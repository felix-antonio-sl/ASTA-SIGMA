---
id: TPL-UX-001
version: 1.0.0
status: draft
date: YYYY-MM-DD
owner: ASTA-SIGMA UX Guild
related:
  - ../../03-guias/operativas/GO-005_Diseno_UI.md
---
# Ficha de Experiencia de Usuario (UX): [Nombre del Servicio o Flujo]


---

## 1. Problema Fundamental y Usuarios Clave

### 1.1. Job-to-be-Done (JTBD)

*¿Cuál es el progreso que el usuario está tratando de hacer en su vida? ¿Qué 'trabajo' ha 'contratado' a nuestro servicio para hacer?*

- **Cuando...** [Situación/Contexto del usuario]
- **Quiero...** [Motivación/Objetivo del usuario]
- **Para poder...** [Resultado esperado/Beneficio final]

**Ejemplo:**

- **Cuando** estoy preparando la rendición de cuentas de un proyecto complejo,
- **Quiero** identificar rápidamente posibles errores o inconsistencias antes de enviarla,
- **Para poder** reducir la probabilidad de que sea observada por la CGR y evitar retrasos en el proyecto.

### 1.2. User Personas

*¿Quiénes son los arquetipos de usuarios para los que estamos diseñando?*

| Persona | Rol | Objetivos Clave | Frustraciones Clave |
|---|---|---|---|
| **[Nombre de la Persona]** | [Ej: Gestor Financiero de División] | Asegurar el cumplimiento y optimizar el tiempo administrativo. | Ambigüedad en la normativa y miedo a cometer errores. |
| **[Otra Persona]** | [Ej: Profesional de Terreno] | Reportar gastos de forma rápida y sencilla desde cualquier lugar. | Sistemas lentos y complejos, y falta de feedback inmediato. |

---

## 2. Flujo de Experiencia (User Journey)

*¿Cuáles son los pasos, pensamientos y emociones del usuario al interactuar con el servicio para completar su 'trabajo'?*

**Escenario:** [Describir el escenario específico del journey. Ej: Un gestor financiero pre-audita una rendición con el asistente de IA.]

| Paso del Usuario | Tarea Específica | Puntos de Contacto (Touchpoints) | Pensamientos / Preguntas del Usuario | Oportunidades de Mejora |
|---|---|---|---|---|
| **1. Descubrimiento** | El usuario se entera de que existe una nueva herramienta de asistencia. | Email informativo, notificación en el sistema. | "¿Esto es obligatorio? ¿Será difícil de usar?" | Comunicar claramente el beneficio y ofrecer un tutorial opcional. |
| **2. Inicio** | El usuario sube los documentos de la rendición al sistema. | Interfaz de carga de archivos. | "¿Qué formatos son compatibles? ¿Cuánto tardará esto?" | Dar indicaciones claras de formatos y mostrar una barra de progreso. |
| **3. Interacción** | El asistente procesa los documentos y presenta un resumen de hallazgos. | Dashboard de resultados, lista de observaciones. | "¿Puedo confiar en esta IA? ¿Cómo corrijo esto?" | Explicar cada hallazgo (explicabilidad) y enlazar a la normativa. |
| **4. Finalización** | El usuario corrige los problemas y genera la versión final para envío. | Botón "Generar Reporte Final", notificación de éxito. | "Espero que esto haya funcionado. Me siento más seguro ahora." | Ofrecer un resumen de las mejoras y permitir dar feedback. |

---

## 3. Métricas de Experiencia (HEART Framework)

*¿Cómo mediremos de forma cuantitativa la calidad de la experiencia del usuario?*

| Categoría | Objetivo | Métrica Clave (SLI) | Meta (SLO) |
|---|---|---|---|
| **Happiness (Felicidad)** | Los usuarios se sienten satisfechos y seguros usando el servicio. | - CSAT (Customer Satisfaction Score) post-interacción. | > 4.5 / 5 |
| **Engagement (Compromiso)** | Los usuarios utilizan el servicio de forma regular y profunda. | - % de rendiciones que pasan por el asistente. | > 80% |
| **Adoption (Adopción)** | Nuevos usuarios comienzan a utilizar el servicio. | - Tasa de activación de nuevos usuarios por mes. | > 15% mensual |
| **Retention (Retención)** | Los usuarios continúan utilizando el servicio a lo largo del tiempo. | - % de usuarios activos que regresan cada mes. | > 70% |
| **Task Success (Éxito de Tarea)** | Los usuarios pueden completar su 'trabajo' de forma eficiente y efectiva. | Tasa de finalización del flujo; Reducción en tasa de observaciones. | > 95%; Reducción del 50% |
