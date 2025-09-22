---
id: ADR-core-106
version: 1.0.0
status: accepted
date: 2025-09-19
owner: Arquitectura ASTA-SIGMA
related:
  - MANUAL_ASTA-SIGMA
  - GO-004
---
# ADR-006: DR/Chaos como Obligación de Suministro

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-06) reveló que el `Contrato de Suministro`, si bien define un plan de contingencia básico, carece de garantías computables y demostrables sobre la resiliencia de los proveedores críticos. Una resiliencia meramente declarativa introduce un riesgo inaceptable en la cadena de suministro digital.

## Decisión

Se decide que para toda dependencia externa clasificada como crítica (que soporte un Sistema de Trabajo R2 o R3), el `Contrato de Suministro` debe incluir obligaciones explícitas y verificables de resiliencia. Esto incluye:

1. **Pruebas de Contingencia Periódicas:** Realización obligatoria de *game days* trimestrales para simular fallos (ej. usando técnicas de Chaos Engineering).
2. **RTO/RPO Contractuales:** Definición de Objetivos de Tiempo de Recuperación (RTO) y Objetivos de Punto de Recuperación (RPO) medibles y vinculantes.
3. **Garantías de Seguridad:** Requisito de presentar SBOM (Software Bill of Materials) y certificaciones de seguridad (ej. ISO 27001, SOC2).

La ejecución y los resultados de estas pruebas se documentarán en la `Guía Operativa GO-004` y se revisarán como parte de la RVC trimestral.

## Consecuencias

### Positivas

- **Resiliencia Demostrable:** La resiliencia de la cadena de suministro pasa de ser una suposición a una capacidad verificada.
- **Gestión de Riesgos Proactiva:** Permite identificar y mitigar puntos únicos de fallo en los proveedores antes de que causen un incidente real.
- **Relaciones Claras con Proveedores:** Establece expectativas claras y contractuales sobre la fiabilidad y seguridad de los servicios consumidos.

### Negativas

- **Mayor Carga de Gestión:** Requiere un esfuerzo adicional por parte de los equipos para coordinar, ejecutar y analizar los *game days* con los proveedores.
- **Posible Resistencia de Proveedores:** Algunos proveedores pueden ser reacios a comprometerse contractualmente con estas exigencias, lo que podría limitar las opciones de sourcing.
