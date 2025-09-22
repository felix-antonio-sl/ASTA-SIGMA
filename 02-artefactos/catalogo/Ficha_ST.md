---
id: CAT-001
version: 1.0.0
status: draft
date: 2024-05-01
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - GM-002
---
# Catálogo: Ficha de Sistema de Trabajo (ST)

La ficha es la fuente de verdad de un Sistema de Trabajo. Este documento resume su propósito, contexto, dependencias, riesgos y métricas Σ/Δ. Use la siguiente estructura como plantilla base.

```markdown
### Ficha de Sistema de Trabajo: [Nombre del ST]

- id: ST-XXX
- version: 1.0.0
- owner_team: [Equipo de Flujo de Valor]
- review_cadence: quarterly
- date: YYYY-MM-DD

#### Vista Σ (Estructura)
1. purpose: >-
     [Verbo(s) + qué + para qué beneficio]
2. strategic_alignment:
   - primary_objective: "OBJ-001"
   - related_kpis: ["KPI-VALOR", "KPI-CALIDAD"]
3. external_context:
   - regulators: ["CGR", "DIPRES"]
   - partners: ["Municipalidad X"]
4. provided_capabilities:
   - id: CAP-INT-TERRITORIAL
     name: "Inteligencia Territorial como Servicio"
     description: >-
       Describe el resultado observable de la capacidad.
5. consumers:
   - "ST-OTRO-001 usa CAP-INT-TERRITORIAL para mapear casos"
6. dependencies:
   - "Consume CAP-AUTENTICACION de ST-AUT-001 para validar identidad"

#### Vista Δ (Dinámica)
1. slo:
   - availability: { target: 0.995, window: "90d" }
   - latency_p95_ms: 500
2. sli_sources:
   - dashboard_url: https://observability.example.org/st-xxx
3. incident_process:
   - severity_matrix: "GO-004"
   - escalation_contacts: ["oncall@org.cl"]
4. evidence_delta:
   - logs: "otel_collector"
   - traces: true
   - metrics: true

#### Gobernanza
1. risk_tier: R2
2. contracts:
   - data: DATA-XXX-001
   - process: PROC-XXX-001
   - service: SRV-XXX-001
   - agent: AG-XXX-001
3. policies:
   - enforced: ["POL-FINOPS-IA", "POL-TRAZA-IA"]
4. overlay:
   - x_overlay:
       tde_cl:
         expediente_electronico: true
         interoperabilidad: "PISEE"
```
