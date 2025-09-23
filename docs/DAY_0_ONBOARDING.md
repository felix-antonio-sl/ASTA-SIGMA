# Guía de Onboarding (Día 0) para ASTA-SIGMA

Propósito: Esta guía es el punto de partida para cualquier miembro del equipo (desarrollador, arquitecto, jefe de producto, etc.) que necesite entender y utilizar el marco ASTA-SIGMA.

## Tu Misión: Entender el Flujo de Valor

El objetivo de este onboarding no es memorizar cada detalle, sino entender el flujo de trabajo y la filosofía del marco. ASTA-SIGMA trata sobre la entrega de valor público de forma continua, segura y adaptable.

### Paso 1: Entender la Visión (1-2 horas)

Objetivo: Comprender el "porqué" del marco.

1. Lee el Manifiesto: Comienza por el `README.md` principal del repositorio para entender la estructura y la filosofía de alto nivel.
2. Estudia el Manual: Dedica tiempo a leer las Partes 1 y 2 del [`MANUAL_ASTA-SIGMA.md`](./MANUAL_ASTA-SIGMA.md). No te preocupes por los detalles de cada artefacto todavía. Enfócate en:
    * Los Principios Fundamentales (Valor Público, Gobernanza como Código, etc.).
    * El Metamodelo (la diferencia entre Estructura Σ y Dinámica Δ).
    * El Modelo Operativo de Doble Bucle (el ritmo táctico PDCA y el estratégico RVC).

### Paso 2: Explorar el Kit de Herramientas (2-3 horas)

Objetivo: Familiarizarse con los "ladrillos" del marco.

1. Navega por el Modelo: Ve al directorio `../model/` y lee su `README.md`. Este es el catálogo de nuestros artefactos computables.
2. Revisa los Artefactos Clave: Abre y revisa la estructura de los siguientes artefactos. Compara sus plantillas con las definiciones en la Parte 3 del Manual.
    * `Ficha de Sistema de Trabajo (ST)`: El artefacto central que lo une todo.
    * `Contrato de Agente (IA)`: Cómo gobernamos la IA.
    * `Contrato de Servicio (API)`: Cómo definimos nuestras APIs.
    * `ADR (Architecture Decision Record)`: Cómo documentamos decisiones importantes.

### Paso 3: Entender la Gobernanza (1 hora)

Objetivo: Ver cómo las reglas se hacen cumplir.

1. Revisa la Matriz de Gobernanza: Lee el archivo `../model/guias_marco/matriz_gobernanza.md`. Observa cómo cada regla de negocio se mapea a un artefacto computable y a un método de verificación.
2. Explora los Esquemas: Echa un vistazo al directorio `../model/schemas/`. No necesitas entender cada línea, pero reconoce que estos archivos `*.schema.json` son los que permiten la validación automática de nuestros contratos YAML.

### Siguientes Pasos

¡Felicidades! Has completado el onboarding inicial.

Ahora estás listo para tu primera tarea. Dependiendo de tu rol, tu próximo paso podría ser:

* Desarrollador: Tomar una historia de usuario, actualizar el `Contrato de Servicio` correspondiente y ver cómo el pipeline de CI/CD lo valida automáticamente.
* Arquitecto: Proponer un nuevo estándar técnico documentándolo en un `ADR`.
* Jefe de Producto: Rellenar una `Ficha de ST` para una nueva iniciativa y prepararse para la próxima ceremonia de `RVC`.

Si tienes dudas, el `MANUAL_ASTA-SIGMA.md` es tu fuente de verdad. ¡Bienvenido al equipo!
