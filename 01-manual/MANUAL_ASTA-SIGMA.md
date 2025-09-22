---
id: MANUAL_ASTA-SIGMA
version: 2.0.0
status: active
date: 2024-05-01
owner: ASTA-SIGMA Core Team
related:
  - OVERVIEW-000
  - ONBOARD-000
---
# Manual ASTA-SIGMA

> Un producto para diseñar, operar y transformar organizaciones complejas con gobernanza como código.

Este manual consolida el *Marco* (qué y por qué) y la *Metodología* (cómo y cuándo) en una línea de lectura única. Mantiene la narrativa del sistema, detalla el modelo operativo de doble bucle y enlaza el catálogo completo de artefactos computables.

## 1. Fundamentos (QUÉ / WHY)

### 1.1 Visión y Propósito

ASTA-SIGMA es el estándar operativo del GORE Ñuble para la transformación digital y la integración responsable de IA. Garantiza que cada iniciativa tecnológica sea:

- **Alineada:** responde a una necesidad de valor público clara y medible.
- **Robusta:** es segura, resiliente y cumple con la normativa por diseño.
- **Adaptable:** evoluciona iterativamente en lugar de ejecutarse como proyecto finito.
- **Observable:** su operación y decisiones son transparentes y auditables.

### 1.2 Principios Rectores

1. **Valor Público Verificable:** la justificación se expresa en métricas de impacto.
2. **Simplicidad y Esencialismo:** modelar lo mínimo necesario (`EA-ligera`).
3. **Gobernanza como Código:** políticas, contratos y reglas viven en Git y en CI.
4. **Adaptabilidad Continua:** la transformación es un flujo permanente (`#NoProyectos`).
5. **Humano en el Centro, IA como Agente:** la IA aumenta capacidades en Sistemas de Trabajo definidos.
6. **Equipos Estables:** el trabajo fluye hacia equipos multidisciplinarios persistentes.

### 1.3 Metamodelo Σ/Δ

El marco mantiene una dualidad entre **estructura (Σ)** y **dinámica (Δ)** para asegurar trazabilidad entre diseño y operación.

| Grupo | Entidad Σ (Estructura) | Entidad Δ (Dinámica) |
| :--- | :--- | :--- |
| Flujos de valor | Equipo de flujo | Capacidad del equipo |
| | Sistema de Trabajo (ST) | Métricas de valor (KPI/OKR) |
| | Capacidad | Objetivos de Nivel de Servicio (SLO) |
| | Servicio | Indicadores de Nivel de Servicio (SLI) |
| Interfaces | Proceso | Métricas de flujo |
| | Agente digital (IA) | Métricas de IA (fidelidad, latencia) |
| | Actor humano | Métricas de experiencia |
| | Producto de datos | Métricas de calidad de datos |
| Entorno | Contexto externo | Señales del entorno |
| Dependencias | Contrato de suministro | Cumplimiento de SLA |
| Gobernanza | Política / Control | Evidencia operativa (logs, alertas) |

### 1.4 Gobernanza de agentes IA (HCAI)

Cada agente de IA se define por:

- **Propósito HCAI:** `Assist`, `Augment`, `Orchestrate`, `Automate`.
- **Ciclo cognitivo SDA:** `Sense`, `Decide`, `Act`.
- **Espectros operativos:**
  1. Autonomía (`RAG` → `ReAct` → `Plan+Execute`).
  2. Responsabilidad (`Monitor` → `Provide` → `Control` → `Coproduce` → `Execute`).
  3. Interacción (`Machine-in-the-loop` → `Mixed initiative` → `Human-in-the-loop` → `Autonomous`).

Regla de oro: para procesos con riesgo el modo por defecto es **humano en el bucle (HITL)** con puntos de control explícitos.

## 2. Modelo Operativo (CUÁNDO)

### 2.1 Cadencia de Doble Bucle

- **Bucle interno (táctico – semanas):** ciclo PDCA del equipo. Se planifica, construye, verifica y actúa sobre incrementos pequeños.
- **Bucle externo (estratégico – trimestres):** Revisión de Valor y Capacidad (RVC). Se analiza evidencia, se decide inversión y se ajusta la estrategia.

Ambos bucles se alimentan mutuamente; la evidencia operacional del PDCA soporta la deliberación RVC, y las decisiones estratégicas definen el siguiente backlog táctico.

### 2.2 Línea base gobernada (Adopción Inicial)

1. **Taller de diseño del ST:** completar la [Ficha de Sistema de Trabajo](../02-artefactos/catalogo/Ficha_ST.md) en colaboración multidisciplinaria. Registrar tier de riesgo usando [GM-002](../03-guias/marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md) y definir SLO iniciales.
2. **Autoevaluación de madurez del equipo:** aplicar [GM-001](../03-guias/marco/GM-001_Guia_Madurez_Equipos_Flujo_Valor.md) y acordar acciones de mejora.
3. **Contratos de interfaz v1.0:** mapear interfaces y formalizarlas con las plantillas de [`02-artefactos/templates`](../02-artefactos/templates/), incluyendo el nuevo **Contrato de Servicio (API)**.

### 2.3 Operación continua (PDCA)

1. **Planificar:** backlog priorizado alineado a valor público y riesgos.
2. **Diseñar:** decisiones técnicas documentadas en ADRs (`04-adrs/core`).
3. **Construir y validar:** desarrollo guiado por contratos, pruebas automatizadas, linters y gates definidos en la [Matriz de Gobernanza CI](../02-artefactos/Matriz_Gobernanza_CI.md).
4. **Operar y observar:** monitoreo de SLO/SLI, telemetría (`ADR-core-103`), runbooks y guías operativas (`03-guias/operativas`).
5. **Aprender y adaptar:** retrospectivas, análisis de métricas y actualización del backlog.

### 2.4 Gobernanza estratégica (RVC)

1. **Preparación:** consolidar evidencias (valor entregado, salud del servicio, cumplimiento de políticas) usando [`02-artefactos/presentacion`](../02-artefactos/presentacion/) y las políticas de reporte FinOps/SRE.
2. **Presentación:** el equipo expone resultados y aprendizajes, usando datos observables.
3. **Deliberación:** comités revisan riesgos, inversiones y escenarios.
4. **Decisión:** `Continuar`, `Expandir`, `Reducir` o `Cerrar` el ST para el próximo trimestre, documentando acuerdos y actualizando la ficha de portafolio.

## 3. Kit de herramientas (CON QUÉ)

### 3.1 Catálogo de artefactos

| Artefacto | Ubicación | Propósito |
| --- | --- | --- |
| Ficha de Sistema de Trabajo | [`02-artefactos/catalogo/Ficha_ST.md`](../02-artefactos/catalogo/Ficha_ST.md) | Anclar propósito, contexto, riesgos y SLO de cada ST. |
| Contrato de Datos | [`02-artefactos/templates/TPL-001_Contrato_Datos.yaml`](../02-artefactos/templates/TPL-001_Contrato_Datos.yaml) | Formalizar esquemas y obligaciones de calidad de datos. |
| Contrato de Proceso | [`02-artefactos/templates/TPL-002_Contrato_Proceso.yaml`](../02-artefactos/templates/TPL-002_Contrato_Proceso.yaml) | Declarar pasos críticos, controles y responsabilidades. |
| Contrato de Agente IA | [`02-artefactos/templates/TPL-003_Contrato_Agente.yaml`](../02-artefactos/templates/TPL-003_Contrato_Agente.yaml) | Gobernar propósito HCAI, espectros y puntos HITL. |
| **Contrato de Servicio (API)** | [`02-artefactos/templates/TPL-004_Contrato_Servicio_API.yaml`](../02-artefactos/templates/TPL-004_Contrato_Servicio_API.yaml) | Especificar interfaces HTTP/OpenAPI, SLO y pruebas de contrato. |
| Políticas computables | [`05-policies`](../05-policies/) | Reglas FinOps, abuso LLM, trazabilidad, temperatura IA, SLO por riesgo. |
| ADRs core | [`04-adrs/core`](../04-adrs/core/) | Decisiones de arquitectura transversales. |
| ADRs overlay TDE-CL | [`04-adrs/tde-cl`](../04-adrs/tde-cl/) | Decisiones específicas del perfil chileno. |
| Guías marco (GM) | [`03-guias/marco`](../03-guias/marco/) | Marcos de referencia (madurez, riesgo, contratos). |
| Guías operativas (GO) | [`03-guias/operativas`](../03-guias/operativas/) | Procedimientos detallados (calidad IA, accesibilidad, game days, ensamblaje). |
| Portfolio & reportes | [`02-artefactos/presentacion`](../02-artefactos/presentacion/) | Plantillas para informar a gobernanza (plan maestro, informes ST, iniciativas). |

### 3.2 Mapa de artefactos y gobernanza

| Sistema de Trabajo | Contratos vinculados | Políticas aplicables | SLO/SLI | Gates CI | Evidencia Δ |
| --- | --- | --- | --- | --- | --- |
| ST-XXX | Datos (`TPL-001`), Proceso (`TPL-002`), Servicio (`TPL-004`), Agente (`TPL-003`) | POL-FINOPS-IA, POL-TRAZA-IA, Política SLO por Riesgo | `SLO-Disponibilidad`, `SLO-Calidad` | Validación de schemas (`validate_contracts.sh`), pruebas de contrato API, suite GO-002/GO-005 | Reporte trimestral RVC, dashboards OTEL |
| Dependencias externas | Contrato de Suministro (`TPL-005`, si aplica) | POL-ABUSO-LLM (cuando hay IA expuesta), POL-TEMPERATURA-LLM | `SLA-Proveedor` | Auditoría de SLA, caos obligatorio (`ADR-core-106`) | Incidentes y acuerdos post-mortem |
| Agentes IA | Contrato de Agente, playbook GO-002 | POL-ABUSO-LLM, POL-TEMPERATURA-LLM | `SLO-Fidelidad`, `SLO-Latencia` | Suites de abuso LLM, monitoreo continuo, kill-switch documentado | Bitácora de uso, registros HITL |

La [Matriz de Gobernanza CI](../02-artefactos/Matriz_Gobernanza_CI.md) desglosa los gates obligatorios por tier de riesgo.

## 4. Gobernanza continua (BAJO QUÉ REGLAS)

- **FinOps y rate limiting:** ver [`ADR-core-104`](../04-adrs/core/ADR-core-104_Politica_FinOps_y_RateLimit_por_Tier.md) y la política [`05-policies/POL-FINOPS-IA.yaml`](../05-policies/POL-FINOPS-IA.yaml).
- **Observabilidad:** implementar telemetría OpenTelemetry conforme a [`ADR-core-103`](../04-adrs/core/ADR-core-103_Estandar_Telemetria_OTel_IA_RAG.md) y [`02-artefactos/arquitectura/Esquema_Telemetria_ASTA_OTel.md`](../02-artefactos/arquitectura/Esquema_Telemetria_ASTA_OTel.md).
- **Calidad y abuso LLM:** aplicar [`05-policies/POL-ABUSO-LLM.yaml`](../05-policies/POL-ABUSO-LLM.yaml) y la guía [`03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md`](../03-guias/operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md).
- **Accesibilidad y UX:** cumplir [`03-guias/operativas/GO-005_Diseno_UI.md`](../03-guias/operativas/GO-005_Diseno_UI.md) y asociar hallazgos a los gates de accesibilidad.
- **Overlay regulatorio TDE-CL:** habilitar políticas y contratos específicos en [`06-overlay-tde-cl`](../06-overlay-tde-cl/) usando el namespace `x_overlay.tde_cl` en artefactos base.
- **Evidencias Δ:** cada PR debe adjuntar resultados de gates, métricas SLO y acciones correctivas; registrar en el repositorio (`08-inventory` y dashboards compartidos).

## 5. Recetas de aplicación (CÓMO)

1. **Iniciar un ST desde cero:** seguir la línea base gobernada (2.2), generar contratos iniciales y activar gates mínimos de tier.
2. **Modernizar un sistema existente:** ejecutar descubrimiento con [`02-artefactos/presentacion/plantilla_informe_arquitectura.md`](../02-artefactos/presentacion/templates/plantilla_informe_arquitectura.md), documentar estado actual y definir backlog de migración.
3. **Proceso inter-organizacional:** utilizar contratos de servicio y datos para formalizar la colaboración; documentar acuerdos de interoperabilidad en `TPL-004` y en el overlay (`06-overlay-tde-cl`).
4. **Elaborar TDRs basados en arquitectura:** apoyarse en [`02-artefactos/presentacion/templates/plantilla_plan_iniciativa.md`](../02-artefactos/presentacion/templates/plantilla_plan_iniciativa.md) y referenciar contratos computables como anexos obligatorios.
5. **Game Days y continuidad:** usar [`03-guias/operativas/GO-004_GameDays_Proveedores_y_DR.md`](../03-guias/operativas/GO-004_GameDays_Proveedores_y_DR.md) junto a `ADR-core-106` para validar resiliencia.

---

Este manual se mantiene bajo control de cambios semánticos (SemVer) y actúa como contrato vivo entre equipos de flujo, gobernanza y la comunidad ASTA-SIGMA.
