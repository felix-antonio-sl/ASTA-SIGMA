---
id: OVERVIEW-000
version: 1.0.0
status: active
date: 2024-05-01
owner: ASTA-SIGMA Core Team
related:
  - MANUAL_ASTA-SIGMA
  - ONBOARD-000
---
# Índice Maestro ASTA-SIGMA

Este índice sintetiza el mapa documental del repositorio y cómo navegarlo. Usa los enlaces a continuación para saltar directamente a cada "libro" del sistema.

## Mapa de carpetas

```text
ASTA-SIGMA/
├── 00-overview/          # Índice maestro y material de alto nivel
├── 01-manual/            # Manual ASTA-SIGMA (Fundamentos + Operación)
├── 02-artefactos/        # Catálogo de artefactos, plantillas y esquemas base
├── 03-guias/             # Guías de marco (GM) y operativas (GO)
├── 04-adrs/              # Architecture Decision Records (core y overlay)
├── 05-policies/          # Políticas computables transversales
├── 06-overlay-tde-cl/    # Extensión regulatoria TDE-Chile
├── 07-org/               # Organización, gobernanza y RACI
├── 08-inventory/         # Instancias vivas (ST, datos, agentes IA, procesos)
└── README.md             # Guía de Día 0 (punto de entrada)
```

## Recursos esenciales

- **Manual unificado:** [`01-manual/MANUAL_ASTA-SIGMA.md`](../01-manual/MANUAL_ASTA-SIGMA.md)
- **Matriz de gobernanza CI:** [`02-artefactos/Matriz_Gobernanza_CI.md`](../02-artefactos/Matriz_Gobernanza_CI.md)
- **Guías marco (GM):** [`03-guias/marco`](../03-guias/marco/)
- **Guías operativas (GO):** [`03-guias/operativas`](../03-guias/operativas/)
- **Políticas core:** [`05-policies`](../05-policies/)
- **Overlay regulatorio:** [`06-overlay-tde-cl`](../06-overlay-tde-cl/)

## Cómo contribuir

1. Crea un fork o clona el repositorio.
2. Trabaja en una rama descriptiva (ej. `feature/gate-service-contract`).
3. Sigue las convenciones de front matter `{id, version, status, date, owner, related}` en todo archivo Markdown/YAML nuevo o editado.
4. Ejecuta los scripts de validación (`validate_contracts.sh`, linters locales) antes de enviar cambios.
5. Abre un Pull Request describiendo el impacto operativo y la evidencia Δ.

## Licencia

Este proyecto está bajo la licencia [MIT](../LICENSE).
