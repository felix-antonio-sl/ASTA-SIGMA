---
id: ARQ-TELEM-001
version: 1.0.0
status: active
date: 2025-09-16
owner: Arquitectura ASTA-SIGMA
related:
  - ADR-core-103
---
# Esquema de Telemetría ASTA-SIGMA con OpenTelemetry (OTel)


---

## 1. Atributos Globales (Resource Attributes)

*Estos atributos deben estar presentes en todas las trazas generadas dentro del marco.*

- `service.name`: Nombre del servicio (ej. `agente-preauditor-cgr`)
- `asta.st.id`: ID del Sistema de Trabajo (`ST-XXX`)
- `asta.agente.id`: ID del Agente (`AG-XXX`)

## 2. Flujo de Invocación de Agente RAG (Ejemplo)

*Una solicitud completa a un agente RAG debe generar una traza con la siguiente estructura de spans anidados.*

**Span Raíz: `agente.request`**

- **Atributos:**
  - `asta.trace.id`: ID de correlación único para la transacción completa.
  - `asta.user.id_pseudonym`: Identificador anonimizado del usuario.
  - `http.request.method`, `url.full`, `http.request.body.content`

  **↳ Span: `rag.pipeline`**
  - **Atributos:**
    - `rag.input.query`: La pregunta original del usuario.

    **↳ Span: `rag.retrieval`**
    - **Atributos:**
      - `rag.retrieval.k`: Número de documentos a recuperar.
      - `rag.retrieval.vector_db.vendor`: Proveedor de la base de datos vectorial.
      - `rag.retrieval.documents.count`: Número de documentos efectivamente recuperados.

    **↳ Span: `llm.generate`**
    - **Atributos:**
      - `llm.vendor`: Proveedor del modelo (ej. `openai`, `azure`).
      - `llm.request.model`: Nombre del modelo (ej. `gpt-4.1-mini`).
      - `llm.usage.input_tokens`, `llm.usage.output_tokens`
      - `llm.request.temperature`, `llm.request.top_p`
      - `llm.response.stop_reason`
      - `asta.cost.usd`: Costo estimado de la llamada al LLM.
      - `asta.ttft.ms`: Tiempo hasta el primer token (Time to First Token).

  **↳ Span: `agente.response`**

  - **Atributos:**
    - `http.response.status_code`
    - `asta.citations.count`: Número de citas en la respuesta.
    - `asta.citations.ids`: Lista de IDs de los documentos citados.
    - `asta.policy.hits`: Lista de políticas de seguridad que se activaron.
    - `asta.hitl.event`: Booleano que indica si se activó un evento de Humano-en-el-Bucle.
