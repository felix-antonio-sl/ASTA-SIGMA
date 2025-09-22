---
id: REF-OCE-001
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../../01-manual/MANUAL_ASTA-SIGMA.md
  - ../../04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md
---
# Modelo de Referencia Técnico: Orquestación Cognitiva Empresarial (OCE)


## Propósito y Relación con ASTA-SIGMA

Este documento sirve como el plano arquitectónico y el modelo de referencia técnico para la implementación de los `Sistemas de Trabajo` definidos y gobernados por el marco **ASTA-SIGMA**.

Mientras ASTA-SIGMA se enfoca en el **QUÉ** y el **PORQUÉ** (el diseño sociotécnico, la gobernanza, los contratos), este modelo de referencia se enfoca en el **CÓMO** (la plataforma, los componentes, los patrones de ingeniería).

Proporciona a los equipos de ingeniería y plataforma un vocabulario común y una arquitectura estandarizada para construir la infraestructura de IA del GORE Ñuble de manera robusta, escalable y alineada con los principios de gobernanza.

## Metamodelo de la Plataforma OCE

### Capas (Layers)

1. **Experiencia y Agentes** *(Experience & Agents)*: Copilotos, chatbots, asistentes, sistemas multi-agente.
2. **Orquestación** *(Orchestration Fabric)*: Motores de flujo de trabajo, motores de reglas, bus de eventos, gestión de compensaciones y reintentos.
3. **Modelos y Serving** *(Model Serving)*: LLMs, modelos de CV/NLP/tabulares, endpoints compatibles con OpenAI, batching continuo.
4. **Datos** *(Data Layer)*: Malla de datos, lakehouse, feature store, bases vectoriales, caché semántica, catálogos.
5. **Infraestructura**: Contenedores, Kubernetes, aceleradores (GPU), autoscaling, GitOps, Infraestructura como Código (IaC).
6. **Gobernanza y Seguridad**: Políticas como código, RBAC/ABAC, prevención de fuga de datos (DLP), auditoría.

### Ejes Transversales (Cross-cutting Concerns)

- **Integración:** APIs (REST, gRPC), eventos.
- **Automatización:** CI/CD, despliegues canary/blue-green.
- **Gestión del Ciclo de Vida:** Modelos, prompts, datos.
- **Observabilidad, Seguridad y Costos.**

## Contratos y Artefactos Técnicos

- **Contratos de API/Esquema**: OpenAPI/JSON Schema, AsyncAPI para eventos.
- **Herramientas (Tool/Function Calling)**: Funciones de negocio expuestas a LLMs con permisos y cuotas.
- **Políticas como Código**: OPA/Rego, Cedar.
- **Gestión de Prompts**: Registro centralizado, versionamiento, pruebas A/B.
- **Contratos de Datos**: Implementación técnica de los contratos definidos en ASTA-SIGMA, incluyendo linaje y SLOs de calidad/frescura.
- **Gestión de Modelos**: Registro de modelos, almacenamiento de artefactos, SBOM de imágenes.
- **Flujos de Trabajo (Workflows)**: DSL declarativa, claves de idempotencia, patrón Saga para transacciones distribuidas.

## Patrones de Orquestación

- **Pipelines**: ETL/ELT + RAG + post-procesamiento.
- **Multi-agente**: Router, Supervisor–Worker, Planner–Executor, Critic–Refiner, ReAct.
- **Compensaciones**: Patrón Saga, Outbox transaccional.
- **Humano-en-el-Bucle (HITL)**: Colas de aprobación/corrección, active learning.

## Gestión de Estado y Memoria

- **Corto Plazo**: Estado de sesión/conversación, contexto de herramientas.
- **Largo Plazo**: Bases de conocimiento, bases vectoriales, memoria de entidades con TTL.
- **Consistencia**: Event sourcing, CRDTs para colaboración multi-agente.
- **Privacidad**: Scoping por tenant, redacción de PII, cifrado en reposo y en tránsito.

## Arquitectura de la Capa de Datos

- **Data Mesh/Lakehouse** con zonas gobernadas (bronce, plata, oro).
- **Feature Store** para reutilización de variables; **Vector DB** para embeddings con búsqueda híbrida (densa + BM25).
- **Caché Semántica** de respuestas por hash de prompt+contexto.
- **Monitoreo de Calidad**: Herramientas tipo Great Expectations/Evidently, detección de deriva (drift) de datos y modelos.

## Serving de Modelos y Despliegue de LLMs

- **Contenedorización**: Imágenes con versiones fijadas, alineamiento de CUDA/cuDNN, escaneo de vulnerabilidades (Trivy/Grype).
- **Runtimes Optimizados**: vLLM, TGI, Triton, Ray Serve.
- **Endpoints**: Compatibles con OpenAI, streaming, rate limiting, colas y batching continuo.
- **Autoscaling**: Basado en métricas de GPU, longitud de cola, ocupación de batch; pre-calentamiento de instancias y escalado a cero.
- **Enrutamiento de Modelos**: Basado en políticas (costo, latencia, calidad), con fallbacks y tráfico sombra para pruebas.

## Seguridad y Cumplimiento

- **Mitigación de OWASP Top-10 para LLMs**: Inyección de prompts, exfiltración de datos, envenenamiento de datos de entrenamiento.
- **Zero-Trust**: mTLS, JWT/OIDC, WAF, políticas de red en Kubernetes.
- **Gestión de Secretos**: Integración con KMS, rotación, cifrado de sobre.
- **DLP/PII**: Detección, enmascaramiento, tokenización.
- **Guardrails (Barandas de Seguridad)**: Filtros de entrada/salida, listas de permisos/denegaciones, moderación de contenido.
- **Auditoría**: Logs inmutables.

## Observabilidad, Evaluación y Calidad

- **Trazabilidad**: OpenTelemetry para trazas distribuidas a través de flujos, herramientas y modelos.
- **Métricas Técnicas**: Latencia (p50/p95/p99), tiempo hasta el primer token (TTFT), throughput, utilización de GPU, tasa de acierto de caché.
- **Métricas de Negocio**: Costo por Resolución (CpR), costo por 1k tokens, tasa de automatización.
- **Métricas de Calidad de IA**: Fidelidad, tasa de alucinación, similitud de respuesta.
- **Arnés de Evaluación (Eval Harness)**: Conjuntos de datos de referencia (golden sets), evaluación humana, LLM-como-juez, pruebas de regresión.

## Gobierno y Costos (FinOps)

- **Presupuestos**: Definición de presupuestos y alertas por `Sistema de Trabajo`.
- **Unit Economics**: Análisis de costo por flujo de trabajo o por resolución.
- **Optimización**: Rightsizing de GPUs, uso de instancias spot/on-demand.
- **Catálogo Central**: Inventario de capacidades, datasets, modelos y prompts con dueños y políticas asociadas.

## Roadmap de Implantación Sugerido

1. **Descubrimiento**: Inventario de flujos y KPIs; `Contratos de Datos` mínimos.
2. **Arquitectura Base**: Kubernetes, serving de modelos compatible con OpenAI, base vectorial, motor de flujos, observabilidad.
3. **Piloto**: 1–2 flujos de trabajo con HITL, guardrails, arnés de evaluación y SLOs.
4. **Productivizar**: GitOps, políticas como código, registros de modelos y prompts, FinOps.
5. **Escalar**: Enrutamiento de modelos, fallbacks, auto-reparación, automatización de análisis de causa raíz.
