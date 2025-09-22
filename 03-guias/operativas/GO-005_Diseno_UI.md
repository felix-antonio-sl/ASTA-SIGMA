---
id: GO-005
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
  - ../marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
  - ../marco/GM-001_Guia_Madurez_Equipos_Flujo_Valor.md
---
# GO-005: Guía Operativa de Diseño de Interfaz de Usuario (UI)


---

## 1. Principios Fundamentales de UI

| Principio | Descripción |
|---|---|
| **Claridad sobre Abundancia** | La interfaz debe ser intuitiva y fácil de entender. Cada elemento debe tener un propósito claro. Evite la sobrecarga de información. |
| **Consistencia Interna y Externa** | Los componentes de UI deben comportarse de la misma manera en toda la aplicación (interna) y, siempre que sea posible, seguir los patrones establecidos por el sistema operativo o la plataforma web (externa). |
| **Feedback Inmediato** | El sistema debe informar al usuario lo que está sucediendo. Cada acción del usuario (un clic, un envío de formulario) debe tener una respuesta visible e inmediata (un spinner, un mensaje de éxito/error). |
| **Prevención de Errores** | Es mejor diseñar interfaces que eviten que los errores ocurran en primer lugar, que construir elaborados sistemas de recuperación de errores. Use confirmaciones para acciones destructivas. |
| **Accesibilidad por Defecto** | Todas las interfaces deben ser diseñadas para ser utilizables por el mayor número posible de personas, incluyendo aquellas con discapacidades. Esto no es una característica opcional, es un requisito. |

---

## 2. Sistema de Diseño y Componentes

- **Sistema de Diseño de Referencia:** [Ej: Se debe utilizar el Sistema de Diseño del Gobierno de Chile como base para todos los nuevos desarrollos. Link: https://diseno.gob.cl/]
- **Componentes Permitidos:**
  - **HACER:** Utilizar los componentes (botones, formularios, modales) definidos en el sistema de diseño de referencia siempre que sea posible.
  - **NO HACER:** Crear componentes personalizados si existe una alternativa estándar. Si un componente personalizado es absolutamente necesario, debe ser documentado y aprobado por el equipo de plataforma.

---

## 3. Estándares de Accesibilidad (WCAG 2.1 Nivel AA)

*El cumplimiento de estos estándares es obligatorio.*

- **Contraste de Color:** Todo el texto debe tener un ratio de contraste de al menos 4.5:1 con su fondo.
- **Texto Alternativo para Imágenes:** Todas las imágenes que transmitan información deben tener un atributo `alt` descriptivo.
- **Navegación por Teclado:** Todas las funcionalidades interactivas deben ser accesibles y operables utilizando solo el teclado.
- **Etiquetas en Formularios:** Todos los campos de formulario deben tener etiquetas (`<label>`) asociadas programáticamente.
- **Manejo de Foco:** El foco del teclado debe ser visible y moverse de una manera lógica a través de la página.

---

## 4. Checklist de Revisión de UI

*Antes de que una nueva interfaz o cambio sea aprobado para producción, debe pasar esta revisión.*

- [ ] **Claridad:** ¿Se entiende el propósito de la pantalla en menos de 5 segundos?
- [ ] **Consistencia:** ¿Los botones, colores y tipografías son consistentes con el resto de la aplicación y el sistema de diseño?
- [ ] **Feedback:** ¿Cada acción interactiva proporciona una respuesta clara al usuario?
- [ ] **Prevención de Errores:** ¿Las acciones destructivas (ej. eliminar) piden confirmación?
- [ ] **Accesibilidad:**
  - [ ] ¿El contraste de color cumple el ratio 4.5:1? (Usar un validador de contraste).
  - [ ] ¿Todas las imágenes tienen texto alternativo?
  - [ ] ¿Se puede navegar y operar toda la interfaz usando solo el teclado?
  - [ ] ¿Los campos de formulario están correctamente etiquetados?
- [ ] **Responsividad:** ¿La interfaz se visualiza y funciona correctamente en dispositivos móviles y de escritorio?

---

## 5. Validación Automatizada (CI/CD)

El cumplimiento de los estándares de accesibilidad no debe depender únicamente de la revisión manual. Es un requisito obligatorio integrar herramientas de análisis de accesibilidad automatizadas (como Axe o Pa11y) en el pipeline de Integración Continua (CI).

- **Gate de Calidad:** Un `build` para una rama de `release` **debe fallar** si el análisis automatizado detecta violaciones de accesibilidad de nivel crítico (WCAG Nivel A o AA).
- **Umbral de Aceptación:** El umbral de issues críticos aceptables es **cero**.
