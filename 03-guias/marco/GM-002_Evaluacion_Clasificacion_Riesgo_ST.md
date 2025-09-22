---
id: GM-002
version: 1.0.0
status: active
date: 2025-09-16
owner: Oficina de Transformación Digital GORE Ñuble
related:
  - MANUAL_ASTA-SIGMA
  - POL-SLO-RIESGO
---
# GM-002: Guía Metodológica de Evaluación y Clasificación de Riesgo de ST

## 1. Propósito

Esta guía proporciona un árbol de decisión simple para que los equipos de flujo de valor puedan auto-clasificar sus Sistemas de Trabajo (ST) en uno de los tres tiers de riesgo definidos en el marco ASTA-SIGMA. El objetivo es asegurar un proceso de clasificación consistente, objetivo y auditable.

La clasificación de riesgo es un paso obligatorio durante la creación de la `Ficha de Sistema de Trabajo` y determina los controles de seguridad, SLOs y requerimientos de gobernanza mínimos aplicables.

## 2. Proceso de Clasificación

Responda las siguientes preguntas en orden. La primera respuesta afirmativa determina el tier de riesgo del sistema.

### Pregunta 1: ¿El sistema cumple **alguna** de las siguientes condiciones?

- **Manejo de datos sensibles:** ¿Procesa, almacena o transmite datos personales sensibles (según Ley 19.628), datos financieros o información estratégica clasificada como reservada?
- **Impacto crítico:** ¿Su indisponibilidad impacta servicios esenciales, continuidad operacional o el cumplimiento de obligaciones legales?
- **Uso de IA autónoma:** ¿Incluye agentes de IA en modos de autonomía `Orchestrate` o `Automate`?

> **Si la respuesta es SÍ a cualquiera:** clasifíquelo como **Tier R3 (Alto Riesgo)**.

### Pregunta 2: ¿El sistema es habilitante para otras unidades o servicios prioritarios?

- ¿Publica APIs, datos o procesos que alimentan a otros ST críticos?
- ¿Depende de proveedores externos con SLA altos o cláusulas de continuidad?

> **Si la respuesta es SÍ:** clasifíquelo como **Tier R2 (Riesgo Medio)**.

### Pregunta 3: ¿El sistema se usa principalmente dentro del equipo y tiene bajo impacto externo?

- ¿El volumen de usuarios es acotado y mayormente interno?
- ¿La información gestionada no es sensible ni crítica para la continuidad?

> **Si la respuesta es SÍ:** clasifíquelo como **Tier R1 (Riesgo Bajo)**.

### Si ninguna de las preguntas anteriores aplica

Repase los supuestos y consulte con gobernanza. En caso de duda, optar por el tier superior.

## 3. Controles mínimos por Tier

| Tier | Características | Controles Obligatorios |
| --- | --- | --- |
| **R1** | Sistemas internos de bajo impacto. | Validación de contratos básicos, monitoreo estándar, SLO ≥ 95% disponibilidad. |
| **R2** | Servicios compartidos, dependencia de proveedores. | Pruebas de contrato, controles de seguridad reforzados, SLO ≥ 97%, game days semestrales. |
| **R3** | Servicios críticos, datos sensibles, IA autónoma. | Auditoría de políticas, SLO ≥ 99%, game days trimestrales, revisión de riesgos IA, RACI reforzado. |

## 4. Registro y trazabilidad

1. Documente el tier en la `Ficha de ST` (sección Gobernanza).
2. Actualice la matriz de riesgos del portafolio.
3. Vincule el tier a los pipelines de CI/CD para habilitar los gates correspondientes.
4. Reevalúe el tier al menos una vez al año o ante cambios significativos en alcance, tecnología o regulaciones.
