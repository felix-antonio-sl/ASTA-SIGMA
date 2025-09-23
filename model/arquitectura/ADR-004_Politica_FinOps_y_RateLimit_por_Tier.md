# ADR-004: Política de FinOps y Rate-Limit por Tier de Riesgo

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-07) identificó que, si bien el marco describe conceptualmente la gestión de costos, carece de *guardrails* computables para controlar el gasto en IA. Sin presupuestos y límites automáticos, existe un riesgo financiero significativo de sobrecostos no controlados, especialmente con el uso de modelos de lenguaje a gran escala.

## Decisión

Se adopta una política de FinOps computable (`POL-FINOPS-IA.yaml`) como un artefacto obligatorio para la gobernanza de agentes de IA. Todo `Contrato de Agente` debe referenciar esta política. La política definirá:

1. **Presupuestos (Budgets):** Límites de gasto mensuales obligatorios por agente, tanto en tokens como en USD.
2. **Alertas Automáticas:** Notificaciones cuando el consumo del presupuesto alcance un umbral predefinido (ej. 80%).
3. **Auto-Throttle / Hard-Stop:** Mecanismos de *rate-limiting* o detención automática del servicio cuando se excede el presupuesto, con reglas diferenciadas por Tier de Riesgo (ej. un *hard-stop* para sistemas R1/R2, y un override con aprobación manual para sistemas críticos R3).

## Consecuencias

### Positivas

- **Control de Costos Proactivo:** Previene sobrecostos antes de que ocurran, en lugar de analizarlos de forma reactiva.
- **Visibilidad Financiera:** Proporciona una visión clara del costo operativo de cada agente de IA.
- **Sostenibilidad:** Asegura que el uso de la IA sea financieramente sostenible a largo plazo.

### Negativas

- **Riesgo de Interrupción del Servicio:** Un *hard-stop* podría interrumpir un servicio si el presupuesto no está bien dimensionado. Esto requiere un monitoreo cuidadoso y un proceso de ajuste de presupuesto ágil.
- **Complejidad de Implementación:** Requiere que la plataforma de observabilidad y el *API gateway* puedan implementar estas reglas de forma robusta.
