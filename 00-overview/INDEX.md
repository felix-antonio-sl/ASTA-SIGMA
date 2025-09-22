---
id: DOC-OVERVIEW-000
version: 1.1.0
status: active
date: 2025-01-20
owner: ASTA-SIGMA Core Team
related:
  - README.md
  - 01-manual/MANUAL_ASTA-SIGMA.md
---
# Índice maestro del repositorio ASTA-SIGMA

La estructura del repositorio responde al modelo de "libros" acordado para separar propósito estratégico, ejecución operativa y extensiones territoriales.

## Árbol principal

```
ASTA-SIGMA/
├── README.md                    # Guía Día 0 (onboarding)
├── 00-overview/                 # Índices y navegación
├── 01-manual/                   # Manual unificado ASTA-SIGMA
├── 02-artefactos/               # Catálogo de plantillas, contratos y esquemas
├── 03-guias/                    # Guías de marco (GM) y operativas (GO)
├── 04-adrs/                     # Decisiones de arquitectura (core y overlay)
├── 05-policies/                 # Políticas computables generales
├── 06-overlay-tde-cl/           # Overlay normativo TDE Chile
├── 07-org/                      # Organización, gobernanza y RACI
└── 08-inventory/                # Inventario de instancias (ST, datos, IA, procesos)
```

## Tabla de navegación rápida

| Libro | Contenido clave | Punto de entrada |
| ----- | --------------- | ---------------- |
| Día 0 | Onboarding inmediato | [`README.md`](../README.md) |
| Fundamentos | Visión, modelo operativo y gobernanza continua | [`01-manual/MANUAL_ASTA-SIGMA.md`](../01-manual/MANUAL_ASTA-SIGMA.md) |
| Artefactos | Plantillas y contratos computables | [`02-artefactos/README.md`](../02-artefactos/README.md) *(pendiente de contribuir)* |
| Guías | Instrucciones prescriptivas (GM/GO) | [`03-guias/`](../03-guias) |
| ADRs | Decisiones registradas | [`04-adrs/`](../04-adrs) |
| Políticas | Políticas ejecutables | [`05-policies/`](../05-policies) |
| Overlay TDE-CL | Normativa y tooling local | [`06-overlay-tde-cl/README.md`](../06-overlay-tde-cl/README.md) |
| Organización | Estructura y responsables | [`07-org/`](../07-org) |
| Inventario | Instancias vivas de artefactos | [`08-inventory/`](../08-inventory) |

## Contribución

1. Crea una rama (`git checkout -b feature/mi-aporte`).
2. Sigue los templates del libro correspondiente (GO/GM, TPL, ADR).
3. Ejecuta los chequeos (`bash 06-overlay-tde-cl/ci/validate_contracts.sh`).
4. Abre un Pull Request describiendo evidencias Δ.

## Licencia

Este proyecto está bajo la licencia [MIT](../LICENSE).
