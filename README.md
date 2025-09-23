# ASTA-SIGMA: Marco de Arquitectura Sociotécnica y Gobernanza Adaptable

Repositorio oficial para el marco ASTA-SIGMA del plan de Transformación Digital e IA del Gobierno Regional de Ñuble.

## Estructura del Repositorio (Post-Refactorización)

Este repositorio ha sido reestructurado para separar claramente la documentación conceptual del modelo de artefactos computables.

```bash
ASTA-SIGMA/
├── docs/              # Documentación conceptual y manuales.
│   └── MANUAL_ASTA-SIGMA.md
└── model/             # Artefactos computables, plantillas y esquemas.
    ├── arquitectura/
    ├── diseno_experiencia/
    ├── guias_marco/
    ├── guias_operativas/
    ├── presentacion/
    ├── schemas/       # JSON Schemas para validación de contratos.
    └── README.md      # Guía de los artefactos del modelo.
```

### Puntos de Partida

* **Para entender el QUÉ y el PORQUÉ:** Comience leyendo el manual unificado en [`docs/MANUAL_ASTA-SIGMA.md`](./docs/MANUAL_ASTA-SIGMA.md). Este documento explica los principios, el modelo operativo y la gobernanza del marco.

* **Para usar los artefactos (el CÓMO):** Explore el catálogo de artefactos computables en [`model/`](./model/). El `README.md` de ese directorio proporciona una guía detallada de cada componente.

## Cómo Contribuir

1. Clona el repositorio.
2. Crea una rama para tu contribución (`git checkout -b mi-contribucion`).
3. Haz tus cambios y commitea (`git commit -am 'Agrega nueva funcionalidad'`).
4. Haz push a tu rama (`git push origin mi-contribucion`).
5. Abre un Pull Request en GitHub.

## Licencia

Este proyecto está bajo la licencia [MIT](LICENSE).
