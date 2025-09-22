---
id: ST-TRAMITE-001
version: 1.0.0
status: draft
date: 2025-01-20
owner: Equipo Trámite Digital
related:
  - ../../07-org/value_streams/EFV-EJEMPLO.yaml
  - ../../02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml
---
# ST-TRAMITE-001 — Solicitud Subsidio X

## Mandato y Normativa
- LTDE 21.180 (medios electrónicos, expediente, notificación, interoperabilidad)
- NT: Autenticación, Documentos/Expedientes, Interoperabilidad, Notificaciones, Seguridad, Calidad de Plataformas
- Ley 21.719 (anticipada): privacidad por diseño/defecto, EIPD, brechas
- Proyecto Ley IA (anticipada): riesgo <ALTO|LIMITADO>, transparencia/monitoreo/kill-switch

## Plataformas SGD
- ClaveÚnica, PISEE, DocDigital, Notificador/DDU

## Accesibilidad/UX
- WCAG 2.2 AA; Lenguaje Claro; métricas de experiencia (MESU)

## Métricas y Evidencias (Δ)
- SLO: disponibilidad 99.5%, latencia p95 < 500ms
- Evidencia: logs inmutables, trazas OTel, hash de expediente
