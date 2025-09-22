---
id: ADR-core-102
version: 1.0.0
status: proposed
date: 2025-09-16
owner: ASTA-SIGMA Architecture Guild
related:
  - ../../03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md
  - ../../02-artefactos/contratos/templates/TPL-SVC-001_Service_Contract.yaml
---
# ADR-core-102: Adopción de Model Context Protocol (MCP) para la Interacción con Herramientas de Agentes


## Contexto

El marco ASTA-SIGMA, a través del `Contrato de Agente`, define que los `Agentes Digitales` pueden utilizar `herramientas` para interactuar con sistemas externos y realizar acciones. Sin embargo, el marco no prescribe el protocolo de comunicación específico para esta interacción.

Actualmente, cada integración de herramienta podría requerir un adaptador o conector a medida, llevando a una proliferación de integraciones frágiles, costosas de mantener y difíciles de gobernar. Para crear un ecosistema de capacidades escalable y desacoplado, es necesario un estándar de comunicación común entre los agentes (clientes) y las herramientas (servidores).

El Model Context Protocol (MCP) es un estándar de código abierto diseñado específicamente para este propósito, definiendo un protocolo JSON-RPC para que las aplicaciones de IA descubran, consuman y sean notificadas sobre herramientas, recursos y prompts.

## Decisión

Se establece el **Model Context Protocol (MCP) v2025-06-18** como el estándar obligatorio para todas las interacciones entre `Agentes Digitales` y `Herramientas` dentro del ecosistema del GORE Ñuble.

Esto implica que:

1. **Exposición de Herramientas:** Cualquier `Sistema de Trabajo` o servicio que exponga una capacidad para ser utilizada por un agente de IA (una `herramienta`) **debe** hacerlo a través de un endpoint de servidor MCP.
2. **Consumo de Herramientas:** Los `Agentes Digitales` desarrollados o adquiridos **deben** utilizar un cliente MCP para interactuar con dichas herramientas.
3. **Gobernanza:** El `Contrato de Suministro` de ASTA-SIGMA para una herramienta externa se considerará cumplido si el proveedor entrega un endpoint MCP conforme a la especificación. El `inputSchema` definido en la respuesta `tools/list` de MCP servirá como la especificación técnica computable de la herramienta.

## Consecuencias

- **Positivas:**
  - **Interoperabilidad y Reutilización:** Se crea un ecosistema de herramientas `plug-and-play`. Cualquier agente compatible con MCP puede, en teoría, consumir cualquier herramienta expuesta vía MCP, fomentando la reutilización y reduciendo el retrabajo.
  - **Reducción del Acoplamiento:** Los agentes no necesitan conocer los detalles de implementación de una herramienta, solo su interfaz MCP. Esto permite que las herramientas evolucionen de forma independiente.
  - **Simplificación del Desarrollo:** Los desarrolladores de agentes y herramientas pueden utilizar los SDKs de MCP, acelerando el desarrollo y asegurando el cumplimiento del protocolo.
  - **Gobernanza Mejorada:** Estandariza cómo se definen y descubren las capacidades, haciendo más fácil auditar qué herramientas están disponibles y cómo se están utilizando.

- **Negativas / Compromisos:**
  - **Curva de Aprendizaje:** Los equipos de desarrollo deberán aprender la especificación y los SDKs de MCP.
  - **Adherencia al Estándar:** Introduce una restricción tecnológica. Si un proveedor externo no soporta MCP, se requerirá el desarrollo de un "adaptador MCP" que envuelva la API del proveedor, lo cual representa un costo adicional.
  - **Dependencia de un Estándar Externo:** Aunque es de código abierto, la evolución del protocolo MCP está fuera del control directo del GORE Ñuble. Se deberá monitorear la comunidad y las actualizaciones del estándar.
