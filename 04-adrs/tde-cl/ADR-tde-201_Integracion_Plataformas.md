---
id: ADR-tde-201
version: 1.0.0
status: accepted
date: 2025-09-20
owner: Arquitectura ASTA-SIGMA
related:
  - OVERLAY-TDE-000
---
# ADR‑2xx — Integración con Plataformas TDE‑Chile (ClaveÚnica, PISEE, DocDigital, Notificador)

**Decisión:** Integrar por defecto con las plataformas compartidas operadas por la SGD para identidad, interoperabilidad, expediente/documentos y notificaciones.  
**Motivación:** Cumplir LTDE 21.180, rectoría SGD 21.658 y reducir riesgo de implementación.  
**Consecuencias:** Contratos y ST deben declarar integración, SLAs y evidencias de cumplimiento; pruebas de interoperabilidad obligatorias; fall‑back autorizado por indisponibilidad.
