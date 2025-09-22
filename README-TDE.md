# ASTA‑SIGMA | TDE‑Chile — Factory Seed (Momento 0)

Este paquete deja **por defecto** (de fábrica) todo lo necesario para iniciar el marco **ASTA‑SIGMA** con su **extensión TDE‑Chile** (LTDE 21.180, rectoría SGD 21.658), anticipando **Ley 21.719** (datos personales) y **Ley de IA** (en trámite, enfoque por riesgo).

## Estructura rápida
- `org/` — Modelado de la organización (unidades, EFV, mapeos, gobernanza).
- `inventory/` — Fichas de Sistemas de Trabajo (ST), contratos, agentes IA, datos.
- `arquitectura/` — ADRs TDE‑CL y modelo de referencia.
- `tde-chile/` — Políticas, guías, plantillas, esquemas y CI para cumplimiento.
- `presentacion/` — Plantillas para Informe de Arquitectura y RVC.

## Uso
1. Crea o abre tu repo de gobernanza/arquitectura.
2. Copia todo el contenido del **Factory Seed** al raíz del repo.
3. Ajusta `org/organization.yaml` y publica tus primeras `ST` en `inventory/st`.
4. Completa contratos en `inventory/datos|agentes_ia|procesos` y ejecuta CI (`tde-chile/ci/validate_contracts.sh`).

> Plantillas y guías listas: **Expediente, Interoperabilidad (PISEE), Notificaciones, Incidentes de IA, Brechas de datos, Políticas 21.719 e IA por riesgo**.
