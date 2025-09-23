# Playbook: Definición y Negociación de Contratos de Interfaz

- ID: GM-003
- Versión: 1.0
- Fecha: 2025-09-16
- Audiencia: Equipos de Flujo de Valor, Arquitectos, Product Managers

## 1. Propósito y Principios

Los `Contratos Computables` son el pilar de la interoperabilidad en ASTA-SIGMA. Este playbook describe un proceso colaborativo para que dos equipos —un **Productor** (que expone un servicio o dato) y un **Consumidor** (que lo utiliza)— definan, acuerden y evolucionen un contrato de interfaz.

### Principios Clave

- **Contratos como Código:** Los contratos son artefactos YAML/JSON versionados en Git.
- **Diseño Impulsado por el Consumidor (Consumer-Driven):** El contrato debe satisfacer las necesidades del consumidor, no solo reflejar la implementación interna del productor.
- **Validación Automatizada:** El cumplimiento del contrato se verifica en el pipeline de CI/CD.

## 2. Roles

- **Equipo Productor:** Responsable de implementar, operar y mantener el servicio/dato y su contrato.
- **Equipo Consumidor:** Responsable de integrar y utilizar el servicio/dato según lo especificado en el contrato.

## 3. Flujo de Trabajo para un Nuevo Contrato

### Fase 1: Borrador (Propuesta del Productor)

1. **Acción (Productor):** El Equipo Productor crea un borrador inicial del contrato (`contrato-v0.1.yaml`) en una nueva rama de Git.
2. **Contenido:** El borrador debe incluir, como mínimo, la estructura básica, los campos de datos propuestos y los SLOs iniciales.
3. **Comunicación:** El Productor abre un *Pull Request* (PR) o *Merge Request* (MR) y asigna al líder técnico del Equipo Consumidor para su revisión.

### Fase 2: Revisión y Negociación (Colaboración)

1. **Acción (Consumidor):** El Equipo Consumidor revisa el PR. El objetivo es validar si el contrato propuesto satisface sus necesidades técnicas y de negocio.
2. **Feedback:** La discusión y negociación ocurren en los comentarios del PR. ¿Faltan campos? ¿Son los nombres claros? ¿Son los SLOs realistas y suficientes?
3. **Iteración:** El Productor actualiza el contrato basándose en el feedback, haciendo *commits* adicionales en la misma rama. Este ciclo se repite hasta que ambas partes están de acuerdo.

### Fase 3: Acuerdo y Fusión (Sello de Aprobación)

1. **Acción (Consumidor):** El líder técnico del Equipo Consumidor aprueba formalmente el PR.
2. **Acción (Productor):** El Equipo Productor fusiona el PR a la rama principal. El contrato se versiona como `v1.0.0`.
3. **Resultado:** El contrato es ahora oficial y representa un acuerdo vinculante entre los dos equipos.

## 4. Implementación y Validación Continua

- **Implementación (Ambos):** Ambos equipos utilizan el contrato `v1.0.0` como la especificación técnica para su trabajo de desarrollo.
- **Validación (Productor):** El pipeline de CI/CD del Productor debe incluir pruebas de contrato que verifiquen que su servicio cumple con las promesas del contrato (esquema, SLOs, etc.).
- **Validación (Consumidor):** El pipeline del Consumidor puede incluir pruebas contra un *mock* del servicio del productor, generado a partir del contrato.

## 5. Gestión de Cambios y Evolución

Los contratos evolucionarán. La gestión de cambios se rige por el **Versionado Semántico (SemVer)**.

- **Cambio No Disruptivo (Non-Breaking):**
  - *Ejemplo:* Añadir un nuevo campo opcional a una respuesta.
  - *Proceso:* El Productor puede realizar el cambio, incrementar la versión **MENOR** (ej. `v1.1.0`) y notificar al Consumidor. No se requiere un acuerdo formal.

- **Cambio Disruptivo (Breaking Change):**
  - *Ejemplo:* Renombrar un campo existente, eliminar un endpoint, cambiar el tipo de un dato.
  - *Proceso:* **Se debe iniciar el flujo de trabajo de negociación completo (Fases 1-3)**. El resultado será una nueva versión **MAYOR** del contrato (ej. `v2.0.0`).
  - **Ventana de Deprecación:** El Productor debe mantener la versión antigua del contrato funcionando por un período acordado (la `deprecation_window`) para dar tiempo al Consumidor a migrar.
