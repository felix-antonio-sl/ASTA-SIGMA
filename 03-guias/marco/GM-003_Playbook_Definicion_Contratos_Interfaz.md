---
id: GM-003
version: 1.0.0
status: active
date: 2025-09-16
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - GO-003
---
# GM-003: Playbook de Definición y Negociación de Contratos de Interfaz

## 1. Propósito y Principios

Los contratos computables son el pilar de la interoperabilidad en ASTA-SIGMA. Este playbook describe un proceso colaborativo para que un **equipo productor** (expone un servicio o dato) y un **equipo consumidor** (lo utiliza) definan, acuerden y evolucionen un contrato de interfaz.

### Principios Clave

- **Contratos como código:** los contratos son artefactos YAML/JSON versionados en Git.
- **Diseño impulsado por el consumidor:** el contrato debe satisfacer las necesidades del consumidor, no solo reflejar la implementación interna.
- **Validación automatizada:** el cumplimiento del contrato se verifica en el pipeline de CI/CD.

## 2. Roles

- **Equipo Productor:** implementa, opera y mantiene el servicio/dato y su contrato.
- **Equipo Consumidor:** integra y utiliza el servicio/dato según el contrato.

## 3. Flujo de Trabajo para un Nuevo Contrato

### Fase 1: Borrador (Propuesta del Productor)

1. **Acción (Productor):** crea un borrador inicial del contrato (`contrato-v0.1.yaml`) en una nueva rama de Git.
2. **Contenido mínimo:** estructura básica, campos de datos propuestos y SLO iniciales.
3. **Comunicación:** se abre un Pull Request (PR) y se asigna al líder técnico del equipo consumidor.

### Fase 2: Revisión y Negociación (Colaboración)

1. **Acción (Consumidor):** revisa el PR para validar que el contrato satisface sus necesidades técnicas y de negocio.
2. **Feedback:** la discusión y negociación ocurre en comentarios del PR.
3. **Iteración:** el productor actualiza el contrato con nuevos commits hasta lograr acuerdo.

### Fase 3: Acuerdo y Fusión (Sello de Aprobación)

1. **Acción (Consumidor):** aprueba formalmente el PR.
2. **Acción (Productor):** fusiona el PR y etiqueta la versión como `v1.0.0`.
3. **Resultado:** el contrato se vuelve oficial y vinculante entre ambos equipos.

## 4. Implementación y Validación Continua

- **Implementación:** ambos equipos utilizan el contrato `v1.0.0` como especificación técnica.
- **Validación del productor:** el pipeline de CI/CD incluye pruebas de contrato y validación de esquema.
- **Validación del consumidor:** el pipeline integra pruebas contra un mock generado desde el contrato.

## 5. Gestión de Cambios y Evolución (SemVer)

- **Cambios no disruptivos:** ejemplo, añadir un campo opcional. Incrementar versión **menor** (`v1.1.0`) y notificar al consumidor.
- **Cambios disruptivos:** ejemplo, renombrar un campo existente. Reiniciar el proceso de negociación y publicar versión **mayor** (`v2.0.0`).
- **Ventana de deprecación:** mantener la versión anterior operativa por un período acordado.

## 6. Recomendaciones prácticas

1. **Checklist de exhaustividad:** usar [`03-guias/operativas/GO-003_Manual_Ensamblaje_Artefactos_ASTASIGMA.md`](../operativas/GO-003_Manual_Ensamblaje_Artefactos_ASTASIGMA.md) para completar cada campo con precisión.
2. **Control de versiones:** registrar cambios relevantes en los ADR del equipo.
3. **Auditoría:** almacenar evidencias de aprobación (comentarios del PR, firmas digitales) junto al contrato.
