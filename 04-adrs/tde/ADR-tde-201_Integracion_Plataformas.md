---
id: ADR-tde-201
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../06-overlay-tde-cl/policies/POL-TDE-PLATAFORMAS.yaml
  - ../../06-overlay-tde-cl/guias_operativas/GO-009_Interoperabilidad_PISEE.md
---
# ADR-tde-201 — Integración con Plataformas TDE‑Chile (ClaveÚnica, PISEE, DocDigital, Notificador)

**Decisión:** Integrar por defecto con las plataformas compartidas operadas por la SGD para identidad, interoperabilidad, expediente/documentos y notificaciones.  
**Motivación:** Cumplir LTDE 21.180, rectoría SGD 21.658 y reducir riesgo de implementación.  
**Consecuencias:** Contratos y ST deben declarar integración, SLAs y evidencias de cumplimiento; pruebas de interoperabilidad obligatorias; fall‑back autorizado por indisponibilidad.
