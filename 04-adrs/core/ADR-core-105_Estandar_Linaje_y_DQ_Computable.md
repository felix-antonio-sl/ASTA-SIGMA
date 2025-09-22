---
id: ADR-core-105
version: 1.0.0
status: accepted
date: 2025-09-18
owner: Arquitectura ASTA-SIGMA
related:
  - MANUAL_ASTA-SIGMA
---
# ADR-005: Estándar de Linaje y Calidad de Datos (DQ) Computable

- **Estado:** Aceptado
- **Fecha:** 2025-09-22

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-05) señaló que el `Contrato de Datos` actual, aunque define el esquema y los SLOs, carece de campos explícitos para el linaje, la retención y la base legal del procesamiento (DPIA/PIA). Esto crea una brecha en la gobernanza de datos, dificultando la auditoría y la gestión del ciclo de vida de los datos.

## Decisión

Se decide extender el `Contrato de Datos` para incluir campos obligatorios para:

1. **Linaje (`lineage`):** Referencias a las fuentes de datos de origen.
2. **Retención (`retention`):** Políticas de retención y expiración de los datos.
3. **Gobernanza (`governance`):** Base legal del procesamiento y referencia al DPIA/PIA.

Además, se establece que todo pipeline de CI/CD que gestione productos de datos de riesgo R2 o R3 debe incluir un *gate* de validación de calidad de datos (DQ) automatizado, utilizando herramientas como Great Expectations o Soda. El `Contrato de Datos` servirá como la fuente de verdad para estas validaciones.

## Consecuencias

### Positivas

- **Trazabilidad de Datos:** El linaje computable permite rastrear el origen y las transformaciones de cualquier producto de datos.
- **Cumplimiento Normativo:** La inclusión explícita de la base legal y la retención facilita las auditorías de cumplimiento (ej. Ley 19.628).
- **Calidad de Datos Verificable:** La calidad deja de ser declarativa y se convierte en una condición verificable en cada despliegue.

### Negativas

- **Complejidad Adicional:** Los equipos deben mantener y actualizar estos nuevos campos en sus contratos.
- **Costo de Herramientas de DQ:** La implementación de *gates* de calidad de datos puede requerir la adopción y mantenimiento de nuevas herramientas en el stack tecnológico.
