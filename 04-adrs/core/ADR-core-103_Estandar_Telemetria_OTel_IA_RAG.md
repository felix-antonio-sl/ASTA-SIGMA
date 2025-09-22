---
id: ADR-core-103
version: 1.0.0
status: accepted
date: 2025-09-16
owner: Arquitectura ASTA-SIGMA
related:
  - MANUAL_ASTA-SIGMA
  - GOV-MATRIX-001
---
# ADR-003: Estándar de Telemetría y Trazabilidad OTel para IA/RAG

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-01) reveló una brecha crítica en la gobernanza de IA: la falta de una trazabilidad forense *end-to-end* por transacción. Sin un estándar de telemetría, es imposible auditar decisiones sensibles, realizar análisis de causa raíz (RCA) de forma eficiente y mitigar riesgos legales asociados a las respuestas de los agentes de IA.

## Decisión

Se adopta OpenTelemetry (OTel) como el estándar obligatorio para la instrumentación de todos los flujos de trabajo que involucren agentes de IA. Se establece un esquema de telemetría prescriptivo (`Esquema_Telemetria_ASTA_OTel.md`) que define la nomenclatura de *spans* y los atributos obligatorios para cada etapa de un flujo de IA (ej. RAG, uso de herramientas, llamada a LLM).

Todo `Contrato de Agente` para sistemas de riesgo R2 o R3 debe exigir explícitamente el cumplimiento de este estándar. La validación de la cobertura y completitud de las trazas se integrará como un *gate* en los pipelines de CI/CD.

## Consecuencias

### Positivas

- **Auditabilidad Completa:** Cada decisión de un agente puede ser rastreada desde la solicitud del usuario hasta las fuentes de conocimiento consultadas.
- **RCA Acelerado:** El análisis de fallos (ej. alucinaciones, errores de cita) se simplifica drásticamente, permitiendo una depuración reproducible.
- **Gobernanza como Código:** El cumplimiento del estándar de telemetría se vuelve una condición verificable automáticamente, fortaleciendo la postura de GRC.

### Negativas

- **Sobrecarga de Instrumentación:** Requiere un esfuerzo inicial por parte de los equipos de desarrollo para instrumentar su código siguiendo el nuevo estándar.
- **Costo de Almacenamiento de Trazas:** La recolección de trazas detalladas aumentará los costos de la plataforma de observabilidad.
