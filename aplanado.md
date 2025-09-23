# ASTA-SIGMA

## Project Structure

```
ASTA-SIGMA
├── docs
│   ├── DAY_0_ONBOARDING.md
│   ├── MANUAL_ASTA-SIGMA.md
│   ├── Manual_Dia_0.md
│   └── TRACEABILITY.md
├── inventory
│   ├── agentes_ia
│   │   └── AG-TRAMITE-001.yaml
│   ├── datos
│   │   └── DATA-EXPEDIENTE-001.yaml
│   └── st
│       └── ST-TRAMITE-001.md
├── model
│   ├── arquitectura
│   │   ├── templates
│   │   │   └── ADR_template.md
│   │   ├── ADR-001_Patron_Validacion_Contratos_Datos.md
│   │   ├── ADR-002_Adopcion_MCP.md
│   │   ├── ADR-003_Estandar_Telemetria_OTel_IA_RAG.md
│   │   ├── ADR-004_Politica_FinOps_y_RateLimit_por_Tier.md
│   │   ├── ADR-005_Estandar_Linaje_y_DQ_Computable.md
│   │   ├── ADR-006_DR_Chaos_Obligatorio_Suministro.md
│   │   ├── ADR-2xx_TDE-CL_Integracion_Plataformas.md
│   │   ├── ADR-2xy_TDE-CL_Calidad_Plataformas_e_Indisponibilidad.md
│   │   ├── Esquema_Telemetria_ASTA_OTel.md
│   │   ├── Modelo_Referencia_Tecnico_OCE_TDE-CL.md
│   │   └── Modelo_Referencia_Tecnico_OCE.md
│   ├── diseno_experiencia
│   │   └── plantilla_ficha_ux.md
│   ├── guias_marco
│   │   ├── GM-001_Guia_Madurez_Equipos_Flujo_Valor.md
│   │   ├── GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
│   │   ├── GM-003_Playbook_Definicion_Contratos_Interfaz.md
│   │   └── matriz_gobernanza.md
│   ├── guias_operativas
│   │   ├── templates
│   │   │   └── GO_template.md
│   │   ├── GO-002_Monitoreo_Calidad_Agentes_IA.md
│   │   ├── GO-003_Manual_Redaccion_Telegrafica.md
│   │   ├── GO-004_GameDays_Proveedores_y_DR.md
│   │   └── GO-005_Diseno_UI.md
│   ├── schemas
│   │   ├── agent_contract.schema.json
│   │   ├── collaboration_contract.schema.json
│   │   ├── data_contract.schema.json
│   │   ├── knowledge_contract.schema.json
│   │   ├── process_contract.schema.json
│   │   ├── service_contract.schema.json
│   │   └── supply_contract.schema.json
│   └── README.md
├── org
│   ├── governance
│   │   ├── comite_tic_ctd.md
│   │   └── RACI.md
│   ├── mappings
│   │   ├── efv_to_st.yaml
│   │   └── units_to_efv.yaml
│   ├── policies_org
│   │   └── POL-ORG-SEGURIDAD.md
│   ├── units
│   │   └── UN-EJEMPLO.yaml
│   ├── value_streams
│   │   └── EFV-EJEMPLO.yaml
│   └── organization.yaml
├── policies
│   ├── POL-ABUSO-LLM.yaml
│   ├── POL-FINOPS-IA.yaml
│   ├── POL-TRAZA-IA.yaml
│   ├── politica_slo_por_riesgo.yaml
│   └── politica_temperatura_llm.yaml
├── portfolio
│   └── plantilla_ficha_portafolio.yaml
├── presentacion
│   ├── templates
│   │   ├── Informe_Arquitectura_TDE-CL.md
│   │   ├── plantilla_informe_arquitectura.md
│   │   ├── plantilla_informe_portafolio.md
│   │   ├── plantilla_plan_iniciativa.md
│   │   └── plantilla_plan_maestro_transformacion.md
│   └── README.md
├── tde-chile
│   ├── ci
│   │   └── validate_contracts.sh
│   ├── guias_operativas
│   │   ├── GO-006_Expediente_Electronico.md
│   │   ├── GO-007_Notificacion_Brechas_Datos.md
│   │   ├── GO-008_Incidentes_IA.md
│   │   ├── GO-009_Interoperabilidad_PISEE.md
│   │   └── GO-010_Calidad_Plataformas_e_Indisponibilidad.md
│   ├── policies
│   │   ├── POL-DATOS-21719.yaml
│   │   ├── POL-IA-RIESGO-CL.yaml
│   │   └── POL-TDE-PLATAFORMAS.yaml
│   ├── schemas
│   │   ├── schema_contrato_agente_ia_tde.json
│   │   ├── schema_contrato_datos_tde.json
│   │   └── schema_contrato_proceso_tde.json
│   └── templates
│       ├── contrato_agente_ia_tde.yaml
│       ├── contrato_datos_tde.yaml
│       ├── contrato_proceso_tde.yaml
│       ├── contrato_suministro_tde.yaml
│       └── ST_TDE-CL_template.md
├── LICENSE
├── README-TDE.md
└── README.md
```

## File Contents

### productos/ASTA-SIGMA/LICENSE

```
MIT License

Copyright (c) [2025] [Gobierno Regional de Ñuble]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

```

### productos/ASTA-SIGMA/README-TDE.md

```markdown
# ASTA‑SIGMA | TDE‑Chile — Factory Seed (Momento 0)

Este paquete deja **por defecto** (de fábrica) todo lo necesario para iniciar el marco **ASTA‑SIGMA** con su **extensión TDE‑Chile** (LTDE 21.180, rectoría SGD 21.658), anticipando **Ley 21.719** (datos personales) y **Ley de IA** (en trámite, enfoque por riesgo).

## Estructura rápida
- `org/` — Modelado de la organización (unidades, EFV, mapeos, gobernanza).
- `inventory/` — Fichas de Sistemas de Trabajo (ST), contratos, agentes IA, datos.
- `arquitectura/` — ADRs TDE‑CL y modelo de referencia.
- `tde-chile/` — Políticas, guías, plantillas, esquemas y CI para cumplimiento.
- `presentacion/` — Plantillas para Informe de Arquitectura y RVC.

## Uso
1. Crea o abre tu repo de gobernanza/arquitectura.
2. Copia todo el contenido del **Factory Seed** al raíz del repo.
3. Ajusta `org/organization.yaml` y publica tus primeras `ST` en `inventory/st`.
4. Completa contratos en `inventory/datos|agentes_ia|procesos` y ejecuta CI (`tde-chile/ci/validate_contracts.sh`).

> Plantillas y guías listas: **Expediente, Interoperabilidad (PISEE), Notificaciones, Incidentes de IA, Brechas de datos, Políticas 21.719 e IA por riesgo**.

```

### productos/ASTA-SIGMA/README.md

```markdown
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

```

### productos/ASTA-SIGMA/docs/DAY_0_ONBOARDING.md

```markdown
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

```

### productos/ASTA-SIGMA/docs/MANUAL_ASTA-SIGMA.md

```markdown
# MANUAL ASTA-SIGMA

Versión: 2.0
Propósito: Este documento es el manual de referencia y operaciones unificado para el marco ASTA-SIGMA. Describe la visión, principios, modelo operativo, artefactos y guías prescriptivas para diseñar, operar y transformar la organización.

---

## Parte 1: Fundamentos y Principios (QUÉ/WHY)

### 1.1. Visión y Propósito del Marco

ASTA-SIGMA es el marco operativo estándar del GORE Ñuble para la transformación digital y la integración de IA. Su propósito es asegurar que cada iniciativa tecnológica sea:

* Alineada: Responde a una necesidad de valor público clara y medible.
* Robusta: Es segura, resiliente y cumple con la normativa por diseño.
* Adaptable: Puede evolucionar de forma iterativa y continua.
* Observable: Su operación y decisiones son transparentes y auditables.

### 1.2. Principios Fundamentales

* Valor Público Verificable: La justificación es el impacto medible en los ciudadanos o en la eficiencia.
* Simplicidad y Esencialismo: Modelar lo mínimo necesario (`EA-Ligera`).
* Gobernanza como Código: Políticas, controles y contratos son artefactos versionados y automatizados.
* Adaptabilidad Continua: La transformación es un ciclo, no un proyecto (`#NoProyectos`).
* Humano en el Centro, IA como Agente: La tecnología aumenta las capacidades humanas dentro de Sistemas de Trabajo definidos.
* Equipos Estables como Unidad de Producción: El trabajo fluye hacia equipos persistentes y multidisciplinarios, no al revés.

### 1.3. El Metamodelo ASTA-SIGMA: Estructura (Σ) y Dinámica (Δ)

La realidad de la organización se modela con una dualidad:

* Σ (Sigma - Estructura): El diseño, la arquitectura, las políticas. *Lo que planificamos*. (ƒƒ y lo que describimos (as is))
* Δ (Delta - Dinámica): La operación, las métricas, los eventos. *Lo que medimos y controlamos*.

| Grupo | Entidad Σ (Estructura) | Entidad Δ (Dinámica) |
| :--- | :--- | :--- |
| Entidades Fundamentales | Equipo de Flujo de Valor | Capacidad del Equipo (Rendimiento) |
| | Sistema de Trabajo (ST) | Métricas de Valor (KPI/OKR) |
| | Capacidad | Objetivos de Nivel de Servicio (SLO) |
| | Servicio | Indicadores de Nivel de Servicio (SLI) |
| | Proceso | Métricas de Flujo (Tiempo de Ciclo, STP) |
| | Agente Digital (IA) | Métricas de IA (Fidelidad, Latencia) |
| | Actor Humano | Métricas de Experiencia (CSAT) |
| | Producto de Datos | Métricas de Calidad de Datos (DQ) |
| | Aplicación/Plataforma | Métricas de Rendimiento |
| Entidades del Entorno | Contexto Externo | Señales / Cambios del Entorno |
| | Dependencia Externa | Estado de Salud del Proveedor |
| Entidades de Gobernanza | Política / Control | Evidencia Operativa (Logs, Alertas) |
| | Riesgo | Incidentes / Tasa de Fallo |
| | Evento | Presupuesto de Error |
| | Contrato | Cumplimiento del Contrato |
| | Contrato de Suministro | Cumplimiento de SLA del Proveedor |

### 1.4. Gobernanza del Agente Digital: Propósito, Cognición y Espectros

Cada Agente de IA se diseña y gobierna definiendo su posición en estos tres ejes, junto con su propósito estratégico y su función cognitiva principal:

* Propósito HCAI: Define la intención estratégica de la IA en relación con el humano.
  * `Asistir`: La IA actúa como un ayudante que responde a peticiones (ej. un chatbot de preguntas frecuentes).
  * `Aumentar`: La IA proporciona herramientas para potenciar las habilidades humanas (ej. un generador de código).
  * `Orquestar`: La IA coordina a múltiples agentes (humanos o IA) para cumplir un objetivo.
  * `Automatizar`: La IA ejecuta un proceso de forma autónoma con supervisión.

* Ciclo Cognitivo SDA: Descompone la tarea del agente en sus funciones primarias.
  * `Sentir`: Percibir, monitorizar y comprender el estado de un sistema o entorno.
  * `Decidir`: Analizar información, evaluar opciones y seleccionar un curso de acción.
  * `Actuar`: Ejecutar una acción o plan para modificar el estado del sistema.

Los 3 Espectros:

1. Espectro de Autonomía (Arquitectura Cognitiva): `RAG` → `ReAct` → `Planificar y Ejecutar`.
2. Espectro de Responsabilidad (Rol Delegado): `Monitorear` → `Proveer Info/Capacidades` → `Controlar` → `Coproducir` → `Ejecutar`.
3. Espectro de Interacción (Contrato Sociotécnico): `Máquina-en-el-Bucle` → `Iniciativa Mixta` → `Humano-en-el-Bucle (HITL)` → `Autónomo`.

Regla de Oro: Para cualquier proceso con riesgo, el modo por defecto es Humano-en-el-Bucle (HITL).

---

## Parte 2: Modelo Operativo (CUÁNDO)

### 2.1. El Ritmo de Doble Bucle: PDCA (Táctico) + RVC (Estratégico)

La transformación no se gestiona como un proyecto con inicio y fin, sino como un flujo de valor continuo operado por equipos estables. Este flujo tiene un ritmo (`cadencia`) marcado por dos bucles:

1. Bucle Interno (PDCA - Táctico - Semanas/Quincenal): El equipo de flujo de valor opera en ciclos cortos (sprints, kanban) para planificar, hacer, verificar y actuar sobre pequeñas mejoras de forma constante. Aquí es donde se aplica la agilidad para la entrega incremental y el equipo tiene autonomía sobre el "cómo" implementa las funcionalidades.
2. Bucle Externo (RVC - Estratégico - Trimestral): A final de cada `cadencia`, el equipo participa en una Revisión de Valor y Capacidad (RVC). Esta es la ceremonia formal de gobernanza donde el equipo rinde cuentas sobre el "qué" valor ha generado y la gobernanza decide sobre la inversión futura.

### 2.2. Bucle Interno: Flujo de Trabajo del Equipo

1. Planificación del Sprint: El equipo planifica su trabajo. Si una historia de usuario implica un cambio en una interfaz, la actualización del `Contrato` es una tarea obligatoria en el sprint.
2. Diseño Emergente con ADRs: Para decisiones de arquitectura no triviales (ej. "adoptar Kafka para la comunicación asíncrona"), el equipo debe documentar la decisión en un `ADR (Architecture Decision Record)` usando la plantilla.
3. Desarrollo Guiado por Contratos: El desarrollador implementa el código.
4. Validación en el Pipeline (CI/CD): Este es el corazón de la "Gobernanza como Código". El pipeline de CI/CD debe incluir "gates" automatizados que:
   * Validación de Esquemas: Verifican que todos los artefactos (`Contratos`, `Políticas`) se adhieren a su JSON Schema canónico.
   * Pruebas de Contrato de Servicio: Ejecutan pruebas (ej. con Dredd/Prism) que validan que la implementación de una API cumple con su especificación OpenAPI, como se define en el `Contrato de Servicio`.
   * Análisis de Políticas: Escanean el código y los artefactos en busca de violaciones a las `Políticas Computables`.
   * Pruebas de Seguridad y Calidad de IA: Ejecutan las suites de pruebas definidas en las políticas correspondientes.
   * Análisis de Accesibilidad: Ejecutan herramientas automáticas (ej. Axe) contra las interfaces de usuario.
   * Un build roto por un gate de gobernanza detiene el despliegue.
5. Monitoreo y Operación: El equipo utiliza las `Guías Operativas` para la gestión diaria del ST en producción.

### 2.3. Bucle Externo: La Ceremonia de Revisión de Valor y Capacidad (RVC)

Esta es la ceremonia de gobernanza más importante del marco.

* Propósito: Sincronizar la estrategia con la ejecución, tomando decisiones de inversión basadas en evidencia.
* Cadencia: Trimestral.
* Participantes:
  * Presentadores: El Equipo de Flujo de Valor (PO, Tech Lead).
  * Audiencia / Decisores: Gobernanza (Arquitectura, FinOps, Seguridad, Líderes de Portafolio).
* Flujo de la Ceremonia (Agenda Tipo - 2h):
  1. Preparación (Asíncrona): El equipo completa la `plantilla_informe_portafolio.md`, recopilando métricas de:
     * Valor de Negocio: KPIs, OKRs.
     * Salud del Sistema: Cumplimiento de SLOs, deuda técnica.
     * Cumplimiento de Gobernanza: Violaciones de políticas, estado de los contratos.
  2. Presentación de Evidencia (45 min): El equipo presenta sus resultados del trimestre. El foco es en los datos y el aprendizaje.
  3. Diálogo y Análisis (45 min): La gobernanza hace preguntas para entender el contexto detrás de los números.
  4. Decisión de Inversión (30 min): La gobernanza delibera y comunica una de las cuatro decisiones para el ST para el próximo trimestre:
     * 🚀 Continuar/Pivotar: Mantener la inversión actual, ajustando el backlog según el aprendizaje.
     * 💰 Expandir: Aumentar la inversión debido a un alto retorno y oportunidad.
     * 📉 Reducir: Disminuir la inversión, poniendo el ST en modo de mantenimiento.
     * 🛑 Cerrar: Descontinuar el ST y reasignar al equipo a un flujo de valor de mayor impacto.

---

## Parte 3: Kit de Herramientas (CON QUÉ)

Esta sección contiene el catálogo completo de artefactos operativos del marco ASTA-SIGMA.

### 3.1. Mapeo de Artefactos a Fases

| Fase Metodológica | Artefactos Clave Utilizados |
|---|---|
| Adopción Inicial | `Ficha de ST`, `GM-002`, `Guía de Madurez`, `Contratos Computables` |
| Bucle Interno (Táctico) | `ADRs`, `GM-003`, `Guías Operativas`, `Contrato de Servicio` |
| Bucle Externo (Estratégico) | `Revisión de Valor y Capacidad (RVC)`, `Ficha de Iniciativa` |
| Planificación Estratégica | `Ficha de Portafolio`, Plantillas de [presentacion](../model/presentacion) |

### 3.2. Artefacto 1: Ficha de Sistema de Trabajo (ST)

*La Ficha de ST es el documento central que captura el diseño y la dinámica de un Sistema de Trabajo.*

```markdown
### Ficha de Sistema de Trabajo: [Nombre del ST]

- ID: ST-XXX
- Versión: 1.0
- Equipo Responsable: [Nombre del Equipo de Flujo de Valor]
- Cadencia de Revisión: Trimestral
- Fecha: YYYY-MM-DD

##### Vista Σ (Estructura)

1. Propósito y Valor Público
   - *Descripción del valor que este sistema entrega a ciudadanos u otros stakeholders.*

1.b Alineación Estratégica
   - Objetivo Estratégico Principal: [Ej: "Reducir los tiempos de ciclo del proceso X"]
   - Contribución a KPIs de Negocio: `KPI-XXX`, `KPI-YYY`

1.c Contexto Externo y Actores Clave
   - Reguladores: [Nombre del Regulador, Norma aplicable]
   - Actores de Control Externo: [CGR, DIPRES, MDSF]
   - Proveedores Críticos: [Nombre del Proveedor, Servicio que presta]
   - Entidades Colaboradoras: [Nombre de la Institución, Acuerdo de colaboración]
   - Mercado Ciudadano: [Segmento de la población, Necesidades clave]

1.d Interoperabilidad y Estándares
   - Estándares de dato/interfaz: [DCAT-CL, X-Road, OpenAPI 3.1, IDE Ñuble]
   - Catálogo de APIs: [URL/Nomenclatura]
   - Identificadores y metadatos: [Ej: RUT, ID trámite, versión de esquema]

1.e Accesibilidad e Inclusión
   - Criterios: [WCAG 2.2 AA, lenguaje claro]
   - Soportes: [lectores de pantalla, contraste, teclado]

2. Capacidades de Negocio que Realiza
   - `CE-XXX`: [Nombre Capacidad 1]
   - `CE-YYY`: [Nombre Capacidad 2]

2.b Capacidades Ofrecidas (para otros ST)
   - `CAP-XXX`: [Nombre Capacidad Ofrecida 1]
   - `CAP-YYY`: [Nombre Capacidad Ofrecida 2]

3. Servicios Expuestos y SLOs
   - `SV-XXX`: [Nombre Servicio 1]
     - SLO de Disponibilidad: 99.5%
       - Contribución a KPI: "Asegura que el servicio esté operativo para no impactar negativamente el KPI-XXX de tiempo de ciclo."
     - SLO de Latencia p95: < 500ms
       - Contribución a KPI: "Una baja latencia mejora la experiencia del funcionario, contribuyendo al KPI-YYY de adopción de la plataforma."

4. Proceso Principal (Alto Nivel)
   - *Diagrama Mermaid/PlantUML o descripción de los pasos clave.*

5. Actores Clave
   - Humanos: [Rol 1], [Rol 2]
   - Agentes Digitales: `AG-XXX`: [Nombre Agente 1]

5.b Diseño de Experiencia de Usuario (UX)
   - Ficha de UX Asociada: `UX-XXX`

5.c Análisis de Impacto Sociotécnico (Facetas del Trabajo)
   - Toma de Decisiones: *¿Cómo cambia la forma en que los actores humanos toman decisiones? ¿El agente provee opciones, hace recomendaciones o decide autónomamente?*
   - Comunicación y Coordinación: *¿Cómo afecta el agente la comunicación entre los miembros del equipo o con otros ST? ¿La facilita, la formaliza o introduce nuevas barreras?*
   - Aprendizaje y Conocimiento: *¿El agente ayuda a capturar y compartir conocimiento tácito o solo opera con conocimiento explícito?*

6. Productos de Datos (Consumidos/Producidos)
   - Consume: `DP-XXX`
   - Produce: `DP-YYY`

7. Soporte Tecnológico
   - Aplicaciones: `AP-XXX`
   - Plataformas: `PL-YYY`

7.b Dependencias Internas (consume capacidades de otros ST)
   - Consume `CAP-ABC` del ST `ST-OTRO-SISTEMA`

8. Gobernanza y Mandato Regulatorio
   - Tier de Riesgo: [R1, R2, o R3 según GM-002]
   - Mandato Principal: [Ley o Resolución que rige el ST, ej. "Res. N° 30 CGR para Rendiciones"]
   - Políticas Aplicables: [ID Política 1], [ID Control 2]
   - Riesgos Principales: [ID Riesgo 1] (Impacto: Alto, Probabilidad: Media)

9. Controles de Seguridad Computables (Zero-Trust)
   - Autenticación: [Ej: OIDC con proveedor corporativo, API Key gestionada en Vault]
   - Autorización: [Ej: RBAC con roles 'Lector', 'Editor' / ABAC basado en atributo 'División']
   - Cifrado de Datos (en reposo): [Ej: AES-256 gestionado por el proveedor cloud]
   - Registro de Auditoría (Logging): [Ej: Todas las acciones de escritura se registran en log inmutable 'XYZ']

##### Vista Δ (Dinámica)

1. Presupuesto de Error (Mensual)
   - *Ej: PT21M36S de downtime permitido para un SLO de 99.9%.*

2. Puntos de Intervención Humana (HITL)
   - *Cola para excepciones de aprobación.*
   - *Escalamiento a supervisor si tarea > PT48H en cola.*

3. Bucles de Control y Guías Operativas
   - `BC-XXX`: [Nombre del Bucle de Control]
     - Sensor (SLI): Latencia p95 de `SV-XXX`.
     - Objetivo (SLO): <= 500ms.
     - Actuador (Respuesta): Guía Operativa `GO-YYY` (ej. auto-escalado de pods).
   - `GO-XXX`: Procedimiento en caso de fallo de API externa.
   - `GO-YYY`: Procedimiento para rollback de despliegue.

4. Evidencia de Cumplimiento
   - *Log inmutable de todas las decisiones y acciones (Bitácora de Decisión).*
   - *Reporte automático mensual de cumplimiento de SLOs.*
   - *Evidencia para CGR: [ID de la evidencia, ej. "Informe de Rendición Aprobada"].*
```

### 3.3. Artefacto 2: Contratos Computables (YAML)

*(Plantillas YAML para validar en pipelines de CI/CD). Claves en inglés cuando convenga por compatibilidad, con explicación en español. Se referencian ADRs y Políticas de forma consistente.*

#### 3.3.1. Contrato de Agente (IA)

```yaml
kind: agent_contract
agent_id: AG-001
version: "1.1.0"

model:
  provider: "<openai|azure|llama|local>"
  name: "<gpt-4.1-mini|llama3.1-70b|...>"
  version: "<semver|build>"
  endpoint: "<url|logical-name>"

#  Gobernanza Sociotécnica 
# Enumeraciones válidas:
# hcai_purpose: [ASSIST, AUGMENT, ORCHESTRATE, AUTOMATE]
# cognitive_function: [SENSE, DECIDE, ACT, SENSE_AND_DECIDE, DECIDE_AND_ACT, SENSE_DECIDE_ACT]
# autonomy_level: [NONE, ASSISTED, SUPERVISED, RAG, SEMIAUTONOMOUS, AUTONOMOUS]
# responsibility_level: [PROVIDE_INFO, RECOMMEND, APPROVE, EXECUTE]
# interaction_mode: [HUMAN_IN_THE_LOOP, HUMAN_OVER_THE_LOOP, MACHINE_IN_THE_LOOP]

hcai_purpose: ASSIST
cognitive_function: SENSE_AND_DECIDE
autonomy_level: RAG
responsibility_level: PROVIDE_INFO
interaction_mode: HUMAN_IN_THE_LOOP # Default for R2/R3 systems. Override requires explicit justification.

legal_purpose: "Apoyo a la evaluación de admisibilidad según Art. X de la Ley Y"
base_legal_uso_datos: "Ley 19.628 Art. 20"
final_human_supervisor: "[Rol del funcionario que supervisa la decisión]"

telemetry: # ADR-003
  openTelemetry: true
  correlationFields: [trace_id, st_id, ag_id, user_pid]
  minLogFields: [ttft_ms, tokens_in, tokens_out, citations, rag_hits]

costs: # ADR-004
  monthlyTokenBudget: 50000
  monthlyUSDBudget: 300
  alerts: {warn_pct: 0.8, hard_stop_pct: 1.0}

security_and_privacy:
  piiDlp:
    policy: "redact_pii:true, tokenize:rut,email,phone"
    logRetentionDays: 30
  policies:
    toolAllowlist: ["identity.mcp", "legal_search.mcp"]
    operationDenylist: ["download_raw_sensitive_data"]

quality_and_resilience:
  hitl:
    rulesByRisk:
      R3_HIGH: ["confidence<0.90", "sampling>=10%"]
      R2_MEDIUM: ["confidence<0.85", "sampling>=5%"]
      R1_LOW: ["confidence<0.80", "sampling>=2%"]
  ragPolicy:
    citations: {required: true, granularity: "article"}
  qualityMetrics:
    fidelitySLO: 0.98
    citationPrecisionSLO: 0.99

lifecycle:
  status: "pilot" # pilot | production | deprecated | retired
  mandatoryKillSwitch: true
  promotionToProductionCriteria:
    greenSLOsLastDays: 30
    securityAuditOK: true
    operationalCostUnderLimit: true
  rollbackPlanDefined: true

evaluation:
  judgeLlmFidelityThreshold: 0.98
  minRegressionSuiteSize: 200
  redTeamCadence: "monthly"

tasks:
  - id: "consulta_normativa"
    type: "operativa_normativa"
    temperature_max: 0.2
    top_p_max: 0.7
  - id: "resumen_informe"
    type: "analisis_tactico"
    temperature_max: 0.5
    top_p_max: 0.9
```

#### 3.3.2. Contrato de Datos

```yaml
kind: data_contract
product_name: billing_invoices
version: "2.2.0"
interfaces: ["sql:data_warehouse.gold.billing_invoices"]

schema: # ADR-001
  version: "2.2.0"
  primaryKey: [invoice_id]
  fields:
    - {name: invoice_id, type: string, required: true}

quality:
  checks:
    - {name: unique_key, rule: "unique(invoice_id)", severity: error}

slo:
  freshness_p95: "PT30M"
  availability_pct: 99.9

security: # ADR-005
  classification: P1
  pii: false

governance:
  lineage:
    sources: ["st-erp.raw_invoices"]
  retention:
    duration: "P10Y"
  legalBasisForProcessing: "Law X, Art. Y"
  dpiaReference: "DPIA-007"
```

#### 3.3.3. Contrato de Proceso

```yaml
kind: process_contract
process_name: invoice_approval
version: "1.1.0"

sla:
  cycle_time_p95: "PT180M"
  stp_target_pct: 80 # Straight-Through Processing

hitl:
  queues: ["exceptions.approval"]

saga:
  compensations:
    - {action: "revert_publication", on: "publish_to_erp"}
```

#### 3.3.4. Contrato de Conocimiento (RAG)

```yaml
kind: knowledge_contract
collection_name: internal_regulations
version: "1.1.0"

# Source Governance
source_authority_list:
  - issuer: "CGR"
    types: ["resolution", "ruling"]
  - issuer: "DIPRES"
    types: ["directive", "manual"]
blocked_sources: ["drafts", "personal_email", "unsigned_documents"]

# Knowledge Lifecycle
expiry_policy:
  default: "P365D"
  override_by_type:
    resolution: "P5Y"
    directive: "P2Y"
retention:
  duration: "P3Y"

# Retrieval Quality
indexing:
  min_metadata: [doc_id, type, issuer, emission_date, validity]
  mandatory_filters: [{status: "valid"}]

citations:
  style: "required_exact"
  fields: ["issuer", "doc_id", "emission_date", "article"]
```

#### 3.3.5. Contrato de Suministro

```yaml
kind: supply_contract
dependency_id: DEP-001
provider_name: "Identity API Provider"
service_name: "Identity Validation v2"
version: "1.1.0"

sla:
  availability_pct: 99.9
  response_time_p95: "PT0.25S"

error_budget:
  monthly_target_pct: 1.0
  sla_remedies: ["SLA_credits", "RCA_in_PT120H"]

compliance: # ADR-006
  sbom_required: true
  slsa_min_level: "L3"
  audits: ["ISO 27001", "SOC2 Type II"]
  client_audit_rights: true

security:
  shared_data: [rut, name]
  regulatory_compliance: ["Law 19.628"]

capacity_and_quotas:
  rate_limit_rps: 50
  burst: 100
  monthly_quota: 1000000
  backoff_policies: "exponential,jitter"

incident_communications:
  status_page_required: true
  max_notification_window: "PT30M"

contingency_tests:
  quarterly_chaos_test: true
  min_rto: "PT15M"
  min_rpo: "PT5M"
  op_guide_ref: "GO-004"
```

#### 3.3.6. Contrato de Colaboración

```yaml
kind: collaboration_contract
agreement_id: AC-GORE-MUN-001
version: "1.0.0"

# Purpose: Models governance agreements and shared services between autonomous organizations.

participants:
  - entity: "GORE Ñuble"
    role: "Service Provider and Coordinator"
  - entity: "Punilla Municipalities Association"
    role: "Consumer and Governance Participant"

common_objective: "To accelerate the digital transformation of the municipalities in the Punilla Province."

governance_agreements:
  - "Strategic decisions will be made at the Regional DT Roundtable."
  - "Participants commit to adhering to the data standards defined at the Roundtable."

shared_services:
  - service_id: "AS-GORE-01"
    name: "AI Assistants as a Service"
    provider: "GORE Ñuble"
    description: "The GORE offers access to its portfolio of AI assistants for municipal use."
    agreed_sla: "Business hours technical support; 99.0% availability."

responsibilities:
  - entity: "GORE Ñuble"
    responsibility: "Maintain and operate shared services; convene the Regional DT Roundtable."
  - entity: "Punilla Municipalities Association"
    responsibility: "Promote the adoption of services in its municipalities; contribute data to the Ñuble SDI."
```

#### 3.3.7. Contrato de Servicio (API)

```yaml
kind: service_contract
service_id: SV-IDENTIDAD-V2
version: "1.0.0"
openapi_ref: "schemas/identidad-v2.openapi.yaml"
lifecycle: production

slo:
  availability_pct: 99.9
  latency_p95_ms: 250
  error_rate_pct_max: 1.0

error_budget:
  window_days: 30
  actions_on_breach: ["freeze_deploys","mandatory_rca"]

security:
  authn: OIDC
  authz: RBAC
  audit_log: immutable

ratelimits:
  rps: 50
  burst: 100

compliance:
  sbom_required: true
  slsa_min_level: "L3"

contract_tests:
  dredd: "tests/dredd.yml"
  prism_mock: "mocks/identidad-v2.prism.yaml"
```

### 3.4. Artefacto 3: Registros de Decisión de Arquitectura (ADR)

Los ADRs son documentos cortos y versionados que capturan decisiones arquitectónicas importantes. Utilice la siguiente plantilla para crear nuevos ADRs dentro del directorio `arquitectura/`.

* [Plantilla de ADR](../model/arquitectura/templates/ADR_template.md)
* Ejemplos de ADRs Implementados:

  * ADR-003: Estándar de Telemetría y Trazabilidad OTel para IA/RAG (`../model/arquitectura/ADR-003_Estandar_Telemetria_OTel_IA_RAG.md`)
  * ADR-004: Política de FinOps y Rate-Limit por Tier (`../model/arquitectura/ADR-004_Politica_FinOps_y_RateLimit_por_Tier.md`)
  * ADR-005: Estándar de Linaje y DQ computable (`../model/arquitectura/ADR-005_Estandar_Linaje_y_DQ_Computable.md`)
  * ADR-006: DR/Chaos como obligación de Suministro (`../model/arquitectura/ADR-006_DR_Chaos_Obligatorio_Suministro.md`)

### 3.5. Artefacto 4: Guías Operativas

Runbooks para responder a situaciones específicas. Utilice la plantilla en `guias_operativas/`.

* [Plantilla de Guía Operativa](../model/guias_operativas/templates/GO_template.md)

### 3.6. Artefacto 5: Ficha de Experiencia de Usuario (UX)

Enfocado en capturar la perspectiva del usuario (Jobs-to-be-Done, Personas y User Journey).

* [Plantilla de Ficha de UX](../model/diseno_experiencia/plantilla_ficha_ux.md)
* Ejemplos:

  * GO-002 Monitoreo de Calidad de Agentes de IA (`../model/guias_operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md`)
  * GO-003 Manual de Redacción Telegráfica para Prompts (`../model/guias_operativas/GO-003_Manual_Redaccion_Telegrafica.md`)

### 3.7. Artefacto 6: Revisión de Valor y Capacidad (RVC)

```markdown
### Revisión de Valor y Capacidad: Equipo [Nombre del Equipo]

- Período: [Ej: Q3 2025]
- Fecha de Revisión: YYYY-MM-DD

1. Valor Entregado (Resultados del Último Cadence)
   - Progreso de OKRs/KPIs:
     - *Métrica de Valor 1: [Resultado vs. Objetivo]*
     - *Métrica de Valor 2: [Resultado vs. Objetivo]*
   - Cumplimiento de SLOs de Servicios Clave:
     - *Servicio 1: [Disponibilidad, Latencia] vs. SLO.*
   - Hitos Clave Entregados:
     - *Mejora/Funcionalidad 1 y su impacto.*
     - *Reducción de Riesgo/Deuda Técnica 2.*
   - Evolución Sociotécnica:
     - *Nivel de Smartness actual del ST (ej. de 'Ejecución por Script' a 'Adaptación Formuláica').*

2. Gobernanza como Código – Evidencias
   - *% de Contratos validados en CI/CD: [XX]%*
   - *% de trazas OTel con cobertura completa: [XX]%*
   - *% de dependencias críticas con game-day ejecutado: [XX]%*

3. Hoja de Ruta de Opciones (Siguiente Cadence)
   - Fricciones a Resolver:
     - *Prioridad 1: [Descripción de la fricción y ST afectado].*
   - Opciones a Explorar (Real Options):
     - *Iniciativa 1: [Exploración de nueva tecnología/proceso].*
   - Objetivos Propuestos (OKRs/KPIs):
     - *Objetivo 1 para el próximo trimestre.*

4. Solicitud de Capacidad (Modelo de Inversión)
   - Capacidad Actual: [Nº de miembros, costo operativo trimestral].
   - Decisión propuesta:
     - [ ] Mantener  
     - [ ] Expandir: [+N miembros / +$X presupuesto] (justificación basada en ROI/valor)  
     - [ ] Reducir: [-N miembros / -$X presupuesto] (justificación)
   - Riesgos y Dependencias: *Riesgos clave para cumplir los objetivos del próximo cadence.*
```

### 3.8. Artefacto 7: Ficha de Iniciativa

```yaml
id: INIT-XXX-001
version: 1.0
status: proposed # proposed | active | completed | cancelled
date: 'YYYY-MM-DD'

initiative:
  name: "Nombre de la Iniciativa"

  strategicAlignment:
    planHorizon: "Horizonte de Planificación (ej. Q3 2025)"
    kpiContribution:
      - "ID del KPI al que contribuye"

  impactsSystemOfWork:
    - id: "ID del ST impactado"
      description: "Descripción del impacto (ej. 'Implementa la capacidad X', 'Mejora el SLO Y')."

  owner:
    team: "Equipo responsable de la ejecución"

  scope:
    description: "Descripción del alcance del proyecto."
    inScope:
      - "Entregable 1"
      - "Entregable 2"
    outOfScope:
      - "Actividad 1 fuera de alcance"

  definitionOfDone:
    - "Piloto operativo"
    - "Informe de resultados generado"
```

### 3.9. Artefacto 8: Política Computable

```yaml
id: POL-XXX
version: 1.0
status: active # active | draft | deprecated
date: 'YYYY-MM-DD'

# Purpose: Descripción en lenguaje natural de la política.
# Applicability: A qué aplica esta política (ej. "Toda IPR de base tecnológica").

policy:
  name: "Nombre de la Política"
  description: "Descripción detallada."
  rules:
    - id: "rule-001"
      name: "Nombre de la Regla"
      description: "Descripción de la regla."
      condition: "iniciativa.uses_ia == true"
      evidenceRequired:
        - "Descripción de la evidencia 1."
        - "Descripción de la evidencia 2."
      approver: "Rol Aprobador (ej. CISO, DPO, Subcomité de IA)"
```

---

## Parte 4: Gobernanza Continua y Modelo de Inversión (BAJO QUÉ REGLAS)

### 4.1. Cadencia de Gobernanza y Bucles de Control

La gobernanza es un diálogo de inversión rítmico. La RVC revisa la efectividad de bucles tácticos y escala decisiones estratégicas cuando no se cumplen SLOs.

### 4.2. Decisiones de Inversión

1. Continuar
2. Expandir
3. Reducir
4. Cerrar

### 4.3. Gobernanza de Datos y Conocimiento

Curación formal de fuentes para RAG: autoridad, vigencia y trazabilidad. Respuestas sin cita = fallo grave.

### 4.4. Gobernanza Proporcional al Riesgo (Risk Tiers)

* R1 (Bajo): Sistemas internos sin datos sensibles; bajo impacto.
* R2 (Medio): Datos personales no sensibles; importancia operativa.
* R3 (Alto): Datos sensibles/impacto legal o financiero; alto impacto público.

Implementación vía Políticas Computables: `politica_slo_por_riesgo.yaml`, `politica_temperatura_llm.yaml`, etc.

### 4.5. Seguridad y Cumplimiento por Diseño

Zero-Trust; acceso por ABAC/RBAC; auditoría en log inmutable.

### 4.6. Observabilidad y SRE Sociotécnico

Logs, métricas, trazas; SLOs con presupuestos de error que habilitan innovación responsable.

### 4.7. Gestión de la Cadena de Suministro Digital

Dependencias explícitas; contratos de suministro; monitoreo de salud para evitar fallos en cascada.

### 4.8. FinOps: Gestión de Costos y Valor

Etiquetado de costos de nube y tokens de IA por ST y capacidad de negocio para análisis costo-valor.

---

## Parte 5: Recetas de Aplicación (CÓMO)

### 5.1. Receta A: Iniciar una Nueva Iniciativa Digital

* Paso 1: Enmarcar con `Ficha de ST` v0.1 (propósito, actores, fricciones, KPIs).
* Paso 2: Diseñar arquitectura mínima con `Contratos` y `ADRs`.
* Paso 3: Construir primer incremento validando contratos en CI/CD.
* Paso 4: Operar y medir (SLIs/SLOs y presupuesto de error).

### 5.2. Receta B: Modernizar un Sistema/Proceso Legacy

* Paso 1: Arquitectura inversa con `Ficha de ST` (AS-IS).
* Paso 2: Documentar contratos implícitos (AS-IS).
* Paso 3: Diseñar TO-BE (SLOs, salvaguardas, bucles de control).
* Paso 4: Backlog incremental de modernización.

### 5.3. Receta C: Diseñar un Proceso Inter-Divisional

* Modelar cada participante como ST.
* Definir interacciones como servicios y contratos.
* Orquestar el flujo end-to-end con BPMN invocando servicios (no lógica de negocio).

### 5.4. Receta D: Elaborar Términos de Referencia (TDR) y Evaluar Soluciones

* `Ficha de ST` para contexto y propósito.
* `Contratos` como requisitos técnicos/no funcionales (SLOs explícitos).
* `ADRs` como restricciones no negociables (ej.: OIDC).
* Criterios de aceptación: compatibilidad con ASTA-SIGMA, cumplimiento de contratos y generación de evidencia operativa.

```

### productos/ASTA-SIGMA/docs/Manual_Dia_0.md

```markdown
# Manual Día 0 — Puesta en marcha institucional (Guía Express)

## 1) Instalar institucionalidad
- Publica `org/governance/RACI.md` y `org/governance/comite_tic_ctd.md`.
- Designa CTD (titular/subrogante), DPO y CISO.

## 2) Declarar organización y mapa inicial
- Completa `org/organization.yaml` (misión, base legal, contactos).
- Registra `org/units/UN-EJEMPLO.yaml` y `org/value_streams/EFV-EJEMPLO.yaml`.
- Crea mapeos `org/mappings/units_to_efv.yaml` y `org/mappings/efv_to_st.yaml`.

## 3) Identificar y priorizar procedimientos (CPAT)
- Usa la guía de CPAT y crea las primeras fichas `inventory/st/ST-*.md`.
- Para cada ST, declara **contratos** (datos, proceso, agente IA).

## 4) Cumplimiento por diseño (TDE + DP + IA)
- Activa políticas `tde-chile/policies/*.yaml` (21.719 e IA por riesgo).
- Usa guías `tde-chile/guias_operativas/GO-*.md` para expediente, interoperabilidad (PISEE), notificaciones, incidentes IA y brechas.

## 5) Calidad, observabilidad y evidencia
- Define SLO/SLI por ST, activa OTel según `arquitectura/ADR-003_*` y registra evidencias Δ.

## 6) Pipeline (CI) y quality gates
- Ejecuta `bash tde-chile/ci/validate_contracts.sh` localmente.
- Activa `.github/workflows/validate.yml` para bloquear PRs sin base legal/EIPD/riesgo IA.

```

### productos/ASTA-SIGMA/docs/TRACEABILITY.md

```markdown
# Matriz de Trazabilidad Estratégica

**Propósito:** Este documento proporciona una trazabilidad explícita y computable desde los objetivos estratégicos de alto nivel (ej. del plan "Ñuble 250") hasta los artefactos de diseño y operación de ASTA-SIGMA que los implementan. Permite a los auditores y a la gobernanza verificar el alineamiento estratégico de cada componente.

## Trazabilidad de Objetivos a Sistemas de Trabajo

| Objetivo Estratégico (Fuente) | ID Sistema de Trabajo (ST) | Propósito del ST | Contribución al Objetivo |
| :--- | :--- | :--- | :--- |
| **OE-01: Reducir tiempos de respuesta en emergencias** (Plan Ñuble 250) | `ST-EMERG-001` | Sistema de Despacho Asistido por IA | El ST-EMERG-001 utiliza un agente de IA para optimizar la asignación de recursos, contribuyendo directamente a la reducción de los tiempos de respuesta. |
| **OE-02: Agilizar la asignación de fondos concursables** (Estrategia TD) | `ST-FONDOS-001` | Plataforma Única de Fondos Concursables | El ST-FONDOS-001 automatiza la revisión de admisibilidad y centraliza las postulaciones, agilizando todo el ciclo de vida del proceso. |
| **OE-03: Mejorar la transparencia de la inversión pública** (Plan de Gobierno Abierto) | `ST-TRANSP-001` | Portal de Transparencia de Inversiones | Este ST consume datos de múltiples sistemas para ofrecer una vista unificada y pública del avance de los proyectos de inversión regional. |

## Trazabilidad de Sistemas a Artefactos Clave

| ID Sistema de Trabajo (ST) | Artefacto Clave | ID del Artefacto | Propósito del Artefacto |
| :--- | :--- | :--- | :--- |
| `ST-EMERG-001` | Contrato de Agente (IA) | `AG-001` | Define el comportamiento, los límites y las reglas de gobernanza del agente de IA que optimiza el despacho. |
| `ST-EMERG-001` | Contrato de Datos | `DP-GEO-001` | Gobierna el acceso y la calidad de los datos de geolocalización de vehículos de emergencia, un insumo crítico para el agente. |
| `ST-FONDOS-001` | Contrato de Proceso | `PROC-ADMIS-001` | Define el SLA y las reglas de negocio para el proceso de revisión de admisibilidad automatizado. |
| `ST-FONDOS-001` | Contrato de Servicio (API) | `SV-POSTULA-V1` | Expone la API a través de la cual las municipalidades y otras entidades pueden realizar postulaciones de forma estandarizada. |
| `ST-TRANSP-001` | Contrato de Suministro | `DEP-FINANZAS-001` | Gobierna la dependencia del ST-TRANSP-001 en el sistema financiero central para obtener los datos de ejecución presupuestaria. |
| `ST-TRANSP-001` | Ficha de UX | `UX-CIUDADANO-001` | Modela la experiencia del ciudadano que accede al portal de transparencia, asegurando que el diseño sea claro y accesible. |

```

### productos/ASTA-SIGMA/inventory/agentes_ia/AG-TRAMITE-001.yaml

```yaml
kind: agent_contract
version: "1.0.0"
agent_id: "AG-TRAMITE-001"
hcai_purpose: "ASSIST"
interaction_mode: "HUMAN_IN_THE_LOOP"
legal:
  legal_purpose: "Apoyo a instrucción de expediente" # Trad: proposito_legal
  personal_data_processing: "si" # Trad: tratamiento_datos_personales
  legal_basis_for_data: "Ley 19.880; Ley 19.628" # Trad: base_legal_datos
tde:
  authentication: "ClaveUnica" # Trad: autenticacion
  interoperability: "PISEE" # Trad: interoperabilidad
  notification: "Notificador/DDU" # Trad: notificacion
dp_21719:
  privacy_by_design: true # Trad: privacidad_por_diseno
  security_measures: ["cifrado","dlp","verificacion_regular"] # Trad: medidas_seguridad
  dpia_id: "no_aplica" # Trad: eipd_id
  data_breach_policy_ref: "GO-007_Notificacion_Brechas_Datos" # Trad: brechas_go
ai_risk:
  level: "LIMITADO" # Trad: nivel
  user_transparency: true # Trad: transparencia_usuario
  post_deployment_monitoring: true # Trad: monitoreo_pos_despliegue
  kill_switch: true
telemetry:
  opentelemetry: true
  min_log_fields: [trace_id, st_id, model_version, prompts_hash, incident_flag]

```

### productos/ASTA-SIGMA/inventory/datos/DATA-EXPEDIENTE-001.yaml

```yaml
kind: data_contract
version: "1.0.0"
product_name: "Expediente Subsidio X"
owner_org: "ORG-SIGLA"
tde:
  soporte_electronico: true
  interoperable_via: "PISEE"
  expediente_electronico: true
  notificacion_electronica: true
datos_personales:
  base_legal: "Ley 19.880; Ley sectorial X"
  privacidad_por_diseno: true         # Ley 21.719 art. 14 quáter
  eipd_id: "EIPD-2025-001"            # Ley 21.719 art. 15 ter
  medidas_seguridad: ["cifrado","rbac_abac","verificacion_regular"]  # art. 14 quinquies
  retencion_meses: 60
  dpo_contacto: "dpo@org.cl"
brechas:
  procedimiento: "GO-007_Notificacion_Brechas_Datos"  # art. 14 sexies
  ventana_notif_apdp: "sin_dilaciones_indebidas"
evidencia:
  registro_auditoria: "inmutable"
  hash_expedientes: true

```

### productos/ASTA-SIGMA/inventory/st/ST-TRAMITE-001.md

```markdown
# ST-TRAMITE-001 — Solicitud Subsidio X

## Mandato y Normativa
- LTDE 21.180 (medios electrónicos, expediente, notificación, interoperabilidad)
- NT: Autenticación, Documentos/Expedientes, Interoperabilidad, Notificaciones, Seguridad, Calidad de Plataformas
- Ley 21.719 (anticipada): privacidad por diseño/defecto, EIPD, brechas
- Proyecto Ley IA (anticipada): riesgo <ALTO|LIMITADO>, transparencia/monitoreo/kill-switch

## Plataformas SGD
- ClaveÚnica, PISEE, DocDigital, Notificador/DDU

## Accesibilidad/UX
- WCAG 2.2 AA; Lenguaje Claro; métricas de experiencia (MESU)

## Métricas y Evidencias (Δ)
- SLO: disponibilidad 99.5%, latencia p95 < 500ms
- Evidencia: logs inmutables, trazas OTel, hash de expediente

```

### productos/ASTA-SIGMA/model/README.md

```markdown
# Catálogo de Artefactos Computables ASTA-SIGMA

Este directorio contiene los artefactos, plantillas y modelos de datos que componen el "código fuente" del marco ASTA-SIGMA. Están diseñados para ser versionados, reutilizables y, en muchos casos, validados automáticamente en pipelines de CI/CD.

## Estructura del Directorio

- **/arquitectura**: Contiene los Registros de Decisión de Arquitectura (ADRs) que documentan las decisiones técnicas y de diseño más importantes del marco.
- **/diseno_experiencia**: Artefactos relacionados con la Experiencia de Usuario (UX), como plantillas para Fichas de UX, que ayudan a centrar el diseño en el usuario.
- **/guias_marco**: Guías prescriptivas de alto nivel que establecen los estándares y reglas de gobernanza.
- **/guias_operativas**: Runbooks y procedimientos tácticos para la operación diaria de los Sistemas de Trabajo (ST).
- **/presentacion**: Plantillas de presentación para ceremonias clave como la Revisión de Valor y Capacidad (RVC).

## Propósito

El objetivo de mantener estos artefactos como "código" es habilitar la **Gobernanza como Código**. Al definir contratos, políticas y guías en formatos estructurados (como Markdown y YAML), podemos:

1. **Automatizar la Validación:** Usar linters y esquemas para asegurar que los artefactos son correctos.
2. **Gestionar el Cambio:** Usar Git para controlar las versiones y entender la evolución del marco.
3. **Mejorar la Trazabilidad:** Vincular decisiones de arquitectura (ADRs) con las guías que las implementan y los contratos que las hacen cumplir.

Consulte el [MANUAL ASTA-SIGMA](../docs/MANUAL_ASTA-SIGMA.md) para una explicación conceptual detallada de cómo estos artefactos se utilizan en el modelo operativo.

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-001_Patron_Validacion_Contratos_Datos.md

```markdown
# ADR-001: Patrón de Arquitectura de Referencia para la Validación de Contratos de Datos

- Fecha: 2025-09-15
- Estado: Propuesto

## Contexto

El marco ASTA-SIGMA establece el `Contrato de Datos` como un artefacto central para la "Gobernanza como Código". Este contrato define el esquema, las reglas de calidad, los SLOs y las políticas de seguridad de un `Producto de Datos`.

Para que este artefacto sea efectivo, su cumplimiento no puede depender de revisiones manuales. Es imperativo que las garantías definidas en el contrato sean validadas de forma automática y continua por nuestra plataforma de datos.

Este ADR define un patrón de arquitectura lógico que los equipos deben implementar para asegurar esta validación, garantizando que los datos que fluyen por la organización sean confiables y seguros por diseño.

## Decisión

Se establece un patrón de arquitectura de validación de `Contratos de Datos` compuesto por tres componentes lógicos que deben ser integrados en los pipelines de datos (CI/CD para datos):

1. Validador de Esquema (Schema Validator):
    - Responsabilidad: Verifica que la estructura de los datos (ej. columnas, tipos de datos, nulabilidad) se ajuste a la sección `esquema` del contrato.
    - Punto de Actuación: Debe actuar en el momento de la ingesta o escritura de datos. Un dato que no cumple con el esquema debe ser rechazado o derivado a una cola de excepciones.

2. Motor de Calidad de Datos (Data Quality Engine):
    - Responsabilidad: Ejecuta las reglas de negocio y lógicas definidas en la sección `calidad` del contrato (ej. `clave_unica`, `valores_en_rango`, `consistencia_referencial`).
    - Punto de Actuación: Puede actuar post-escritura, de forma asíncrona. Genera métricas sobre la calidad de los datos y puede gatillar alertas si se violan reglas de severidad `error`.

3. Monitor de SLOs (SLO Monitor):
    - Responsabilidad: Mide y reporta el cumplimiento de los Objetivos de Nivel de Servicio definidos en la sección `slo` del contrato (ej. `frescura_p95_minutos`, `disponibilidad_pct`).
    - Punto de Actuación: Opera de forma continua sobre los datos en reposo. Almacena un historial del rendimiento de los SLOs y alimenta dashboards de observabilidad. Es el responsable de calcular el consumo del `Presupuesto de Error` del producto de datos.

Estos componentes deben ser configurados y parametrizados directamente desde el `Contrato de Datos` versionado en Git, asegurando que cualquier cambio en la gobernanza se refleje automáticamente en la operación.

## Consecuencias

- Positivas:
  - Confianza en los Datos: Se establece un mecanismo robusto y automatizado para garantizar la fiabilidad de los datos en toda la organización.
  - Gobernanza como Código Real: La definición de la gobernanza (el contrato) está directamente acoplada a su ejecución (la validación), eliminando la brecha entre la política y la práctica.
  - Detección Temprana de Problemas: Los problemas de calidad y esquema se detectan de forma proactiva, reduciendo el impacto de los datos erróneos en los sistemas consumidores.
  - Claridad para los Equipos: Proporciona una guía de implementación clara para los ingenieros de datos sobre cómo construir pipelines de datos gobernados.

- Negativas / Compromisos:
  - Inversión en Plataforma: Requiere que la organización invierta en herramientas que puedan implementar estos componentes (ej. dbt, Great Expectations, Soda Core, o soluciones cloud nativas). No es una capacidad que se obtiene "gratis".
  - Sobrecarga Inicial: Introduce una sobrecarga computacional y de configuración inicial en los pipelines de datos. Es el costo de la confianza.
  - Curva de Aprendizaje: Los equipos necesitarán ser capacitados en estas herramientas y en la mentalidad de "Data Contract-driven development".

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-002_Adopcion_MCP.md

```markdown
# ADR-002: Adopción de Model Context Protocol (MCP) para la Interacción con Herramientas de Agentes

- Fecha: 2025-09-16
- Estado: Propuesto

## Contexto

El marco ASTA-SIGMA, a través del `Contrato de Agente`, define que los `Agentes Digitales` pueden utilizar `herramientas` para interactuar con sistemas externos y realizar acciones. Sin embargo, el marco no prescribe el protocolo de comunicación específico para esta interacción.

Actualmente, cada integración de herramienta podría requerir un adaptador o conector a medida, llevando a una proliferación de integraciones frágiles, costosas de mantener y difíciles de gobernar. Para crear un ecosistema de capacidades escalable y desacoplado, es necesario un estándar de comunicación común entre los agentes (clientes) y las herramientas (servidores).

El Model Context Protocol (MCP) es un estándar de código abierto diseñado específicamente para este propósito, definiendo un protocolo JSON-RPC para que las aplicaciones de IA descubran, consuman y sean notificadas sobre herramientas, recursos y prompts.

## Decisión

Se establece el Model Context Protocol (MCP) v2025-06-18 como el estándar obligatorio para todas las interacciones entre `Agentes Digitales` y `Herramientas` dentro del ecosistema del GORE Ñuble.

Esto implica que:

1. Exposición de Herramientas: Cualquier `Sistema de Trabajo` o servicio que exponga una capacidad para ser utilizada por un agente de IA (una `herramienta`) debe hacerlo a través de un endpoint de servidor MCP.
2. Consumo de Herramientas: Los `Agentes Digitales` desarrollados o adquiridos deben utilizar un cliente MCP para interactuar con dichas herramientas.
3. Gobernanza: El `Contrato de Suministro` de ASTA-SIGMA para una herramienta externa se considerará cumplido si el proveedor entrega un endpoint MCP conforme a la especificación. El `inputSchema` definido en la respuesta `tools/list` de MCP servirá como la especificación técnica computable de la herramienta.

## Consecuencias

- Positivas:
  - Interoperabilidad y Reutilización: Se crea un ecosistema de herramientas `plug-and-play`. Cualquier agente compatible con MCP puede, en teoría, consumir cualquier herramienta expuesta vía MCP, fomentando la reutilización y reduciendo el retrabajo.
  - Reducción del Acoplamiento: Los agentes no necesitan conocer los detalles de implementación de una herramienta, solo su interfaz MCP. Esto permite que las herramientas evolucionen de forma independiente.
  - Simplificación del Desarrollo: Los desarrolladores de agentes y herramientas pueden utilizar los SDKs de MCP, acelerando el desarrollo y asegurando el cumplimiento del protocolo.
  - Gobernanza Mejorada: Estandariza cómo se definen y descubren las capacidades, haciendo más fácil auditar qué herramientas están disponibles y cómo se están utilizando.

- Negativas / Compromisos:
  - Curva de Aprendizaje: Los equipos de desarrollo deberán aprender la especificación y los SDKs de MCP.
  - Adherencia al Estándar: Introduce una restricción tecnológica. Si un proveedor externo no soporta MCP, se requerirá el desarrollo de un "adaptador MCP" que envuelva la API del proveedor, lo cual representa un costo adicional.
  - Dependencia de un Estándar Externo: Aunque es de código abierto, la evolución del protocolo MCP está fuera del control directo del GORE Ñuble. Se deberá monitorear la comunidad y las actualizaciones del estándar.

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-003_Estandar_Telemetria_OTel_IA_RAG.md

```markdown
# ADR-003: Estándar de Telemetría y Trazabilidad OTel para IA/RAG

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-01) reveló una brecha crítica en la gobernanza de IA: la falta de una trazabilidad forense *end-to-end* por transacción. Sin un estándar de telemetría, es imposible auditar decisiones sensibles, realizar análisis de causa raíz (RCA) de forma eficiente y mitigar riesgos legales asociados a las respuestas de los agentes de IA.

## Decisión

Se adopta OpenTelemetry (OTel) como el estándar obligatorio para la instrumentación de todos los flujos de trabajo que involucren agentes de IA. Se establece un esquema de telemetría prescriptivo (`Esquema_Telemetria_ASTA_OTel.md`) que define la nomenclatura de *spans* y los atributos obligatorios para cada etapa de un flujo de IA (ej. RAG, uso de herramientas, llamada a LLM).

Todo `Contrato de Agente` para sistemas de riesgo R2 o R3 debe exigir explícitamente el cumplimiento de este estándar. La validación de la cobertura y completitud de las trazas se integrará como un *gate* en los pipelines de CI/CD.

## Consecuencias

### Positivas

- **Auditabilidad Completa:** Cada decisión de un agente puede ser rastreada desde la solicitud del usuario hasta las fuentes de conocimiento consultadas.
- **RCA Acelerado:** El análisis de fallos (ej. alucinaciones, errores de cita) se simplifica drásticamente, permitiendo una depuración reproducible.
- **Gobernanza como Código:** El cumplimiento del estándar de telemetría se vuelve una condición verificable automáticamente, fortaleciendo la postura de GRC.

### Negativas

- **Sobrecarga de Instrumentación:** Requiere un esfuerzo inicial por parte de los equipos de desarrollo para instrumentar su código siguiendo el nuevo estándar.
- **Costo de Almacenamiento de Trazas:** La recolección de trazas detalladas aumentará los costos de la plataforma de observabilidad.

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-004_Politica_FinOps_y_RateLimit_por_Tier.md

```markdown
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

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-005_Estandar_Linaje_y_DQ_Computable.md

```markdown
# ADR-005: Estándar de Linaje y Calidad de Datos (DQ) Computable

- **Estado:** Aceptado
- **Fecha:** 2025-09-22

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-05) señaló que el `Contrato de Datos` actual, aunque define el esquema y los SLOs, carece de campos explícitos para el linaje, la retención y la base legal del procesamiento (DPIA/PIA). Esto crea una brecha en la gobernanza de datos, dificultando la auditoría y la gestión del ciclo de vida de los datos.

## Decisión

Se decide extender el `Contrato de Datos` para incluir campos obligatorios para:

1. **Linaje (`lineage`):** Referencias a las fuentes de datos de origen.
2. **Retención (`retention`):** Políticas de retención y expiración de los datos.
3. **Gobernanza (`governance`):** Base legal del procesamiento y referencia al DPIA/PIA.

Además, se establece que todo pipeline de CI/CD que gestione productos de datos de riesgo R2 o R3 debe incluir un *gate* de validación de calidad de datos (DQ) automatizado, utilizando herramientas como Great Expectations o Soda. El `Contrato de Datos` servirá como la fuente de verdad para estas validaciones.

## Consecuencias

### Positivas

- **Trazabilidad de Datos:** El linaje computable permite rastrear el origen y las transformaciones de cualquier producto de datos.
- **Cumplimiento Normativo:** La inclusión explícita de la base legal y la retención facilita las auditorías de cumplimiento (ej. Ley 19.628).
- **Calidad de Datos Verificable:** La calidad deja de ser declarativa y se convierte en una condición verificable en cada despliegue.

### Negativas

- **Complejidad Adicional:** Los equipos deben mantener y actualizar estos nuevos campos en sus contratos.
- **Costo de Herramientas de DQ:** La implementación de *gates* de calidad de datos puede requerir la adopción y mantenimiento de nuevas herramientas en el stack tecnológico.

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-006_DR_Chaos_Obligatorio_Suministro.md

```markdown
# ADR-006: DR/Chaos como Obligación de Suministro

- **Estado:** Propuesto
- **Fecha:** YYYY-MM-DD

## Contexto

La auditoría del marco ASTA-SIGMA (Hallazgo H-06) reveló que el `Contrato de Suministro`, si bien define un plan de contingencia básico, carece de garantías computables y demostrables sobre la resiliencia de los proveedores críticos. Una resiliencia meramente declarativa introduce un riesgo inaceptable en la cadena de suministro digital.

## Decisión

Se decide que para toda dependencia externa clasificada como crítica (que soporte un Sistema de Trabajo R2 o R3), el `Contrato de Suministro` debe incluir obligaciones explícitas y verificables de resiliencia. Esto incluye:

1. **Pruebas de Contingencia Periódicas:** Realización obligatoria de *game days* trimestrales para simular fallos (ej. usando técnicas de Chaos Engineering).
2. **RTO/RPO Contractuales:** Definición de Objetivos de Tiempo de Recuperación (RTO) y Objetivos de Punto de Recuperación (RPO) medibles y vinculantes.
3. **Garantías de Seguridad:** Requisito de presentar SBOM (Software Bill of Materials) y certificaciones de seguridad (ej. ISO 27001, SOC2).

La ejecución y los resultados de estas pruebas se documentarán en la `Guía Operativa GO-004` y se revisarán como parte de la RVC trimestral.

## Consecuencias

### Positivas

- **Resiliencia Demostrable:** La resiliencia de la cadena de suministro pasa de ser una suposición a una capacidad verificada.
- **Gestión de Riesgos Proactiva:** Permite identificar y mitigar puntos únicos de fallo en los proveedores antes de que causen un incidente real.
- **Relaciones Claras con Proveedores:** Establece expectativas claras y contractuales sobre la fiabilidad y seguridad de los servicios consumidos.

### Negativas

- **Mayor Carga de Gestión:** Requiere un esfuerzo adicional por parte de los equipos para coordinar, ejecutar y analizar los *game days* con los proveedores.
- **Posible Resistencia de Proveedores:** Algunos proveedores pueden ser reacios a comprometerse contractualmente con estas exigencias, lo que podría limitar las opciones de sourcing.

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-2xx_TDE-CL_Integracion_Plataformas.md

```markdown
# ADR‑2xx — Integración con Plataformas TDE‑Chile (ClaveÚnica, PISEE, DocDigital, Notificador)

**Decisión:** Integrar por defecto con las plataformas compartidas operadas por la SGD para identidad, interoperabilidad, expediente/documentos y notificaciones.  
**Motivación:** Cumplir LTDE 21.180, rectoría SGD 21.658 y reducir riesgo de implementación.  
**Consecuencias:** Contratos y ST deben declarar integración, SLAs y evidencias de cumplimiento; pruebas de interoperabilidad obligatorias; fall‑back autorizado por indisponibilidad.

```

### productos/ASTA-SIGMA/model/arquitectura/ADR-2xy_TDE-CL_Calidad_Plataformas_e_Indisponibilidad.md

```markdown
# ADR‑2xy — Calidad de Plataformas e Indisponibilidad

**Decisión:** Establecer SLO mínimos por criticidad; exigir reportes de indisponibilidad y planes DR/BCP probados semestralmente (GameDays).  
**Motivación:** Asegurar continuidad del servicio y evidencia operativa.  
**Consecuencias:** Registro de incidentes, pruebas de recuperación, métricas públicas y cláusulas de auditoría en contratos de suministro.

```

### productos/ASTA-SIGMA/model/arquitectura/Esquema_Telemetria_ASTA_OTel.md

```markdown
# Esquema de Telemetría ASTA-SIGMA con OpenTelemetry (OTel)

- **Versión:** 1.0
- **Propósito:** Definir los nombres de spans y atributos obligatorios para la instrumentación de flujos de IA, garantizando una trazabilidad consistente y auditable.

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

```

### productos/ASTA-SIGMA/model/arquitectura/Modelo_Referencia_Tecnico_OCE.md

```markdown
# Modelo de Referencia Técnico: Orquestación Cognitiva Empresarial (OCE)

- ID: ARQ-REF-001
- Versión: 1.0
- Fecha: 2025-09-16
- Relacionado a: `Marco_ASTA-SIGMA.md`

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

```

### productos/ASTA-SIGMA/model/arquitectura/Modelo_Referencia_Tecnico_OCE_TDE-CL.md

```markdown
# Modelo de Referencia Técnico OCE — TDE‑Chile (resumen)

Capas: Identidad (ClaveÚnica), Firma (FirmaGob), Expediente/Documental (DocDigital), Interoperabilidad (PISEE), Notificador/DDU, Observabilidad (OTel), Seguridad (SIEM/Zero‑Trust), Analítica (MGDE).

```

### productos/ASTA-SIGMA/model/arquitectura/templates/ADR_template.md

```markdown
# ADR-XXX: [Título de la Decisión]

- Fecha: YYYY-MM-DD
- Estado: Propuesto / Aceptado / Reemplazado

## Contexto

*¿Cuál es el problema o la fuerza que nos lleva a tomar esta decisión?*

## Decisión

*¿Cuál es la decisión que tomamos?*

## Consecuencias

*¿Cuáles son los resultados positivos y negativos de esta decisión? ¿Qué compromisos aceptamos?*

```

### productos/ASTA-SIGMA/model/diseno_experiencia/plantilla_ficha_ux.md

```markdown
# Ficha de Experiencia de Usuario (UX): [Nombre del Servicio o Flujo]

- **ID de la Ficha:** UX-XXX
- **Asociada al Sistema de Trabajo:** `ST-XXX`
- **Fecha:** YYYY-MM-DD
- **Versión:** 1.0

---

## 1. Problema Fundamental y Usuarios Clave

### 1.1. Job-to-be-Done (JTBD)

*¿Cuál es el progreso que el usuario está tratando de hacer en su vida? ¿Qué 'trabajo' ha 'contratado' a nuestro servicio para hacer?*

- **Cuando...** [Situación/Contexto del usuario]
- **Quiero...** [Motivación/Objetivo del usuario]
- **Para poder...** [Resultado esperado/Beneficio final]

**Ejemplo:**

- **Cuando** estoy preparando la rendición de cuentas de un proyecto complejo,
- **Quiero** identificar rápidamente posibles errores o inconsistencias antes de enviarla,
- **Para poder** reducir la probabilidad de que sea observada por la CGR y evitar retrasos en el proyecto.

### 1.2. User Personas

*¿Quiénes son los arquetipos de usuarios para los que estamos diseñando?*

| Persona | Rol | Objetivos Clave | Frustraciones Clave |
|---|---|---|---|
| **[Nombre de la Persona]** | [Ej: Gestor Financiero de División] | Asegurar el cumplimiento y optimizar el tiempo administrativo. | Ambigüedad en la normativa y miedo a cometer errores. |
| **[Otra Persona]** | [Ej: Profesional de Terreno] | Reportar gastos de forma rápida y sencilla desde cualquier lugar. | Sistemas lentos y complejos, y falta de feedback inmediato. |

---

## 2. Flujo de Experiencia (User Journey)

*¿Cuáles son los pasos, pensamientos y emociones del usuario al interactuar con el servicio para completar su 'trabajo'?*

**Escenario:** [Describir el escenario específico del journey. Ej: Un gestor financiero pre-audita una rendición con el asistente de IA.]

| Paso del Usuario | Tarea Específica | Puntos de Contacto (Touchpoints) | Pensamientos / Preguntas del Usuario | Oportunidades de Mejora |
|---|---|---|---|---|
| **1. Descubrimiento** | El usuario se entera de que existe una nueva herramienta de asistencia. | Email informativo, notificación en el sistema. | "¿Esto es obligatorio? ¿Será difícil de usar?" | Comunicar claramente el beneficio y ofrecer un tutorial opcional. |
| **2. Inicio** | El usuario sube los documentos de la rendición al sistema. | Interfaz de carga de archivos. | "¿Qué formatos son compatibles? ¿Cuánto tardará esto?" | Dar indicaciones claras de formatos y mostrar una barra de progreso. |
| **3. Interacción** | El asistente procesa los documentos y presenta un resumen de hallazgos. | Dashboard de resultados, lista de observaciones. | "¿Puedo confiar en esta IA? ¿Cómo corrijo esto?" | Explicar cada hallazgo (explicabilidad) y enlazar a la normativa. |
| **4. Finalización** | El usuario corrige los problemas y genera la versión final para envío. | Botón "Generar Reporte Final", notificación de éxito. | "Espero que esto haya funcionado. Me siento más seguro ahora." | Ofrecer un resumen de las mejoras y permitir dar feedback. |

---

## 3. Métricas de Experiencia (HEART Framework)

*¿Cómo mediremos de forma cuantitativa la calidad de la experiencia del usuario?*

| Categoría | Objetivo | Métrica Clave (SLI) | Meta (SLO) |
|---|---|---|---|
| **Happiness (Felicidad)** | Los usuarios se sienten satisfechos y seguros usando el servicio. | - CSAT (Customer Satisfaction Score) post-interacción. | > 4.5 / 5 |
| **Engagement (Compromiso)** | Los usuarios utilizan el servicio de forma regular y profunda. | - % de rendiciones que pasan por el asistente. | > 80% |
| **Adoption (Adopción)** | Nuevos usuarios comienzan a utilizar el servicio. | - Tasa de activación de nuevos usuarios por mes. | > 15% mensual |
| **Retention (Retención)** | Los usuarios continúan utilizando el servicio a lo largo del tiempo. | - % de usuarios activos que regresan cada mes. | > 70% |
| **Task Success (Éxito de Tarea)** | Los usuarios pueden completar su 'trabajo' de forma eficiente y efectiva. | Tasa de finalización del flujo; Reducción en tasa de observaciones. | > 95%; Reducción del 50% |

```

### productos/ASTA-SIGMA/model/guias_marco/GM-001_Guia_Madurez_Equipos_Flujo_Valor.md

```markdown
# Guía de Madurez para Equipos de Flujo de Valor

- ID: GM-001
- Versión: 1.0
- Fecha: 2025-09-15

## Propósito

El marco ASTA-SIGMA propone un cambio cultural desde una operación basada en "proyectos" a una basada en "flujos de valor continuos" operados por equipos estables y multidisciplinarios. Esta transición requiere que los equipos desarrollen nuevas capacidades y formas de trabajo.

Esta guía proporciona un modelo de madurez para ayudar a los equipos a autoevaluar su estado actual, identificar áreas de mejora y trazar un camino para operar de manera efectiva dentro del marco ASTA-SIGMA. El objetivo no es que todos los equipos alcancen el Nivel 3 en todas las dimensiones, sino que sean conscientes de sus capacidades y limitaciones.

## Modelo de Madurez

Se evalúan cuatro dimensiones clave a través de tres niveles de madurez.

**Dimensiones:**

1. **Propiedad y Autonomía:** ¿Quién toma las decisiones sobre el "qué" y el "cómo"?
2. **Flujo de Trabajo:** ¿Cómo se gestiona y entrega el trabajo?
3. **Enfoque en el Valor:** ¿Cómo se mide el éxito?
4. **Capacidades Técnicas:** ¿Cuán robustas son las prácticas de ingeniería?

## Niveles de Madurez

### Nivel 1: Equipo Orientado a Tareas (Task-Oriented)

*El equipo opera como un grupo de especialistas que recibe requerimientos detallados y se enfoca en completar tareas individuales.*

#### Propiedad y Autonomía

- El "qué" y el "cómo" son definidos externamente (jefatura, otra área).
- El equipo tiene poca o ninguna interacción con los usuarios finales.
- El Product Owner (si existe) actúa más como un gestor de proyectos o analista de requerimientos.

#### Flujo de Trabajo

- El trabajo se gestiona en silos funcionales (análisis, desarrollo, pruebas).
- La entrega de valor es infrecuente y en grandes lotes (despliegues mensuales o trimestrales).
- Fuerte dependencia de procesos de control de cambio (CAB) externos.

#### Enfoque en el Valor

- El éxito se mide por el cumplimiento de plazos y la entrega de funcionalidades (`output`).
- No existen métricas de valor público o de negocio (KPIs/OKRs), ni SLOs definidos.

#### Capacidades Técnicas

- El testing es mayormente manual y realizado al final del ciclo.
- No existe un pipeline de Integración Continua (CI).
- Los despliegues son manuales, riesgosos y requieren de coordinación extensiva.

### Nivel 2: Equipo de Producto Emergente (Emerging Product)

*El equipo comienza a operar como una unidad cohesionada, con un entendimiento compartido del producto o servicio que construye y su impacto.*

#### Propiedad y Autonomía

- El equipo es dueño del "cómo" (decisiones técnicas), pero el "qué" (prioridades) aún es fuertemente influenciado externamente.
- El Product Owner está empoderado para gestionar el backlog.
- Hay interacción regular con los usuarios para obtener feedback.

#### Flujo de Trabajo

- El equipo es multifuncional y trabaja de forma colaborativa en un backlog unificado (Kanban/Scrum).
- Las entregas son más frecuentes (semanales/quincenales).
- El proceso de despliegue está parcialmente automatizado.

#### Enfoque en el Valor

- El éxito comienza a medirse por el impacto en el usuario y el negocio (`outcome`).
- Se definen y monitorean los primeros SLOs para los servicios críticos.
- Se realizan las primeras `Revisiones de Valor y Capacidad (RVC)`, aunque de forma incipiente.

#### Capacidades Técnicas

- Se implementa un pipeline de Integración Continua (CI) que automatiza la construcción y las pruebas unitarias.
- Se adopta el versionamiento de artefactos (código, contratos) en Git.
- Se comienzan a escribir pruebas automatizadas (unitarias, integración).

### Nivel 3: Equipo de Flujo de Valor (Value Stream)

*El equipo opera como una unidad de negocio autónoma, dueña de su dominio de punta a punta, y está obsesionada con la optimización del flujo de valor hacia el ciudadano.*

#### Propiedad y Autonomía

- El equipo es dueño del "qué" y del "cómo". Tienen autonomía para descubrir y resolver los problemas de los usuarios dentro de su mandato (`Ficha de ST`).
- El Product Owner actúa como un "mini-CEO" del producto.
- La experimentación y el aprendizaje son parte central del proceso.

#### Flujo de Trabajo

- El equipo practica el Despliegue Continuo (CD). Las ideas pueden pasar a producción en días u horas.
- El equipo es dueño de la operación de su servicio en producción (`You build it, you run it`).
- El flujo de trabajo está optimizado para la velocidad y la seguridad.

#### Enfoque en el Valor

- El éxito se mide exclusivamente por el `outcome` (progreso de OKRs/KPIs) y el cumplimiento de SLOs.
- La `Revisión de Valor y Capacidad (RVC)` es un diálogo de inversión estratégico y basado en datos.
- El equipo gestiona activamente su `Presupuesto de Error` para balancear innovación y fiabilidad.

#### Capacidades Técnicas

- Prácticas de CI/CD maduras.
- Infraestructura como Código (IaC).
- Observabilidad profunda (métricas, logs, trazas) del sistema en producción.
- Los `Contratos Computables` son validados automáticamente en el pipeline.

## Herramienta de Autoevaluación de Madurez

Utilice el siguiente checklist en las retrospectivas trimestrales para evaluar el nivel de madurez actual del equipo. Marque la afirmación que mejor describa la realidad del equipo en cada dimensión.

### Dimensión: Propiedad y Autonomía

- [ ] **Nivel 1:** El "qué" y el "cómo" son definidos externamente. El equipo tiene poca interacción con los usuarios finales.
- [ ] **Nivel 2:** El equipo es dueño del "cómo" (decisiones técnicas). El Product Owner gestiona el backlog y hay interacción regular con usuarios.
- [ ] **Nivel 3:** El equipo es dueño del "qué" y del "cómo". Tienen autonomía para descubrir y resolver problemas, y la experimentación es central.

### Dimensión: Flujo de Trabajo

- [ ] **Nivel 1:** El trabajo se gestiona en silos. Las entregas son infrecuentes y en grandes lotes.
- [ ] **Nivel 2:** El equipo es multifuncional y trabaja de forma colaborativa. Las entregas son frecuentes (semanales/quincenales).
- [ ] **Nivel 3:** El equipo practica el Despliegue Continuo (CD). El flujo está optimizado para la velocidad y la seguridad.

### Dimensión: Enfoque en el Valor

- [ ] **Nivel 1:** El éxito se mide por el cumplimiento de plazos (`output`). No hay SLOs ni KPIs de negocio.
- [ ] **Nivel 2:** El éxito se mide por el impacto (`outcome`). Se definen y monitorean los primeros SLOs.
- [ ] **Nivel 3:** El éxito se mide exclusivamente por OKRs/KPIs y SLOs. El equipo gestiona su Presupuesto de Error.

### Dimensión: Capacidades Técnicas

- [ ] **Nivel 1:** El testing es manual. No hay pipeline de CI. Los despliegues son manuales y riesgosos.
- [ ] **Nivel 2:** Se implementa un pipeline de CI. Se adopta Git y se escriben pruebas automatizadas.
- [ ] **Nivel 3:** Prácticas de CI/CD maduras, Infraestructura como Código (IaC) y Observabilidad profunda. Los contratos se validan automáticamente.

## Catálogo de Prácticas de Mejora

Una vez identificado el nivel actual, utilice este catálogo para construir una hoja de ruta de mejora.

**Para pasar de Nivel 1 a Nivel 2:**

1. **Técnico:** Implementar Git y un pipeline de CI básico. Empezar a escribir pruebas unitarias.
2. **Flujo:** Adoptar un tablero Kanban/Scrum unificado. Apuntar a entregas quincenales.
3. **Valor:** Realizar el `Taller de Diseño de ST` para definir los primeros SLOs. Crear un dashboard de monitoreo.
4. **Autonomía:** Empoderar al Product Owner para que sea la única fuente de priorización del backlog.

**Para pasar de Nivel 2 a Nivel 3:**

1. **Técnico:** Automatizar el despliegue a producción (CD). Implementar IaC. Instrumentar el código con telemetría (Observabilidad).
2. **Flujo:** Optimizar el pipeline para reducir el tiempo de ciclo (de commit a producción). Implementar guardias (`on-call`) para el servicio.
3. **Valor:** Definir `Presupuestos de Error` para los SLOs. Conectar las métricas del equipo a los OKRs de la organización. Iniciar prácticas de FinOps.
4. **Autonomía:** Delegar en el equipo la gestión de su `Presupuesto de Error` para balancear innovación y fiabilidad. Fomentar la experimentación.

```

### productos/ASTA-SIGMA/model/guias_marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md

```markdown
# Guía Metodológica: Evaluación y Clasificación de Riesgo de ST

- ID: GM-002
- Versión: 1.0
- Fecha: 2025-09-16
- Relacionado a: `politica_slo_por_riesgo.yaml`

## 1. Propósito

Esta guía proporciona un árbol de decisión simple para que los equipos de flujo de valor puedan auto-clasificar sus Sistemas de Trabajo (ST) en uno de los tres Tiers de Riesgo definidos en el marco ASTA-SIGMA. El objetivo es asegurar un proceso de clasificación consistente, objetivo y auditable.

La clasificación de riesgo es un paso obligatorio durante la creación de la `Ficha de Sistema de Trabajo` y determina los controles de seguridad, SLOs y requerimientos de gobernanza mínimos aplicables.

## 2. Proceso de Clasificación

Responda las siguientes preguntas en orden. La primera respuesta afirmativa determina el Tier de Riesgo del sistema.

### Pregunta 1: ¿El sistema cumple **alguna** de las siguientes condiciones?

- **Manejo de Datos Sensibles:** ¿Procesa, almacena o transmite datos personales sensibles (según Ley 19.628), datos financieros, o información estratégica clasificada como reservada?
- **Impacto Público Directo:** ¿Toma decisiones autónomas (o semi-autónomas) que afectan directamente los derechos, beneficios o servicios a los ciudadanos (ej. asignación de subsidios, evaluación de admisibilidad)?
- **Servicio Crítico Esencial:** ¿Una falla del sistema impediría a la institución cumplir una función esencial de cara a la ciudadanía o tendría un impacto reputacional severo e inmediato?

*   **SI → El sistema es `R3 (Alto Riesgo)`**. No continúe.
*   **NO → Continúe a la Pregunta 2.**

---

### Pregunta 2: ¿El sistema cumple **alguna** de las siguientes condiciones?

- **Manejo de Datos Personales:** ¿Procesa datos personales no clasificados como sensibles (ej. nombre, RUT, contacto)?
- **Importancia Operativa Interna:** ¿Es un sistema clave para la operación interna de una o más divisiones, y una falla prolongada degradaría significativamente la capacidad de los funcionarios para realizar su trabajo?
- **Integración con Múltiples Sistemas:** ¿Actúa como una fuente de verdad o un componente central para otros tres o más sistemas?

*   **SI → El sistema es `R2 (Medio Riesgo)`**. No continúe.
*   **NO → Continúe a la Pregunta 3.**

---

### Pregunta 3: Si respondió NO a todas las preguntas anteriores.

- El sistema es **`R1 (Bajo Riesgo)`**.

Esto generalmente aplica a sistemas internos de apoyo, herramientas de productividad de equipo, o sistemas que no manejan datos personales y cuyo impacto operativo es localizado.

## 3. Registro y Revisión

El Tier de Riesgo asignado **debe** ser registrado en la sección de Gobernanza de la `Ficha de Sistema de Trabajo`.

Esta clasificación no es permanente. Debe ser revisada y, si es necesario, actualizada en cada `Revisión de Valor y Capacidad (RVC)` trimestral, o cada vez que se introduzcan cambios significativos en la arquitectura o funcionalidad del sistema.

```

### productos/ASTA-SIGMA/model/guias_marco/GM-003_Playbook_Definicion_Contratos_Interfaz.md

```markdown
# Playbook: Definición y Negociación de Contratos de Interfaz

- ID: GM-003
- Versión: 1.0
- Fecha: 2025-09-16
- Audiencia: Equipos de Flujo de Valor, Arquitectos, Product Managers

## 1. Propósito y Principios

Los `Contratos Computables` son el pilar de la interoperabilidad en ASTA-SIGMA. Este playbook describe un proceso colaborativo para que dos equipos —un **Productor** (que expone un servicio o dato) y un **Consumidor** (que lo utiliza)— definan, acuerden y evolucionen un contrato de interfaz.

### Principios Clave

- **Contratos como Código:** Los contratos son artefactos YAML/JSON versionados en Git.
- **Diseño Impulsado por el Consumidor (Consumer-Driven):** El contrato debe satisfacer las necesidades del consumidor, no solo reflejar la implementación interna del productor.
- **Validación Automatizada:** El cumplimiento del contrato se verifica en el pipeline de CI/CD.

## 2. Roles

- **Equipo Productor:** Responsable de implementar, operar y mantener el servicio/dato y su contrato.
- **Equipo Consumidor:** Responsable de integrar y utilizar el servicio/dato según lo especificado en el contrato.

## 3. Flujo de Trabajo para un Nuevo Contrato

### Fase 1: Borrador (Propuesta del Productor)

1. **Acción (Productor):** El Equipo Productor crea un borrador inicial del contrato (`contrato-v0.1.yaml`) en una nueva rama de Git.
2. **Contenido:** El borrador debe incluir, como mínimo, la estructura básica, los campos de datos propuestos y los SLOs iniciales.
3. **Comunicación:** El Productor abre un *Pull Request* (PR) o *Merge Request* (MR) y asigna al líder técnico del Equipo Consumidor para su revisión.

### Fase 2: Revisión y Negociación (Colaboración)

1. **Acción (Consumidor):** El Equipo Consumidor revisa el PR. El objetivo es validar si el contrato propuesto satisface sus necesidades técnicas y de negocio.
2. **Feedback:** La discusión y negociación ocurren en los comentarios del PR. ¿Faltan campos? ¿Son los nombres claros? ¿Son los SLOs realistas y suficientes?
3. **Iteración:** El Productor actualiza el contrato basándose en el feedback, haciendo *commits* adicionales en la misma rama. Este ciclo se repite hasta que ambas partes están de acuerdo.

### Fase 3: Acuerdo y Fusión (Sello de Aprobación)

1. **Acción (Consumidor):** El líder técnico del Equipo Consumidor aprueba formalmente el PR.
2. **Acción (Productor):** El Equipo Productor fusiona el PR a la rama principal. El contrato se versiona como `v1.0.0`.
3. **Resultado:** El contrato es ahora oficial y representa un acuerdo vinculante entre los dos equipos.

## 4. Implementación y Validación Continua

- **Implementación (Ambos):** Ambos equipos utilizan el contrato `v1.0.0` como la especificación técnica para su trabajo de desarrollo.
- **Validación (Productor):** El pipeline de CI/CD del Productor debe incluir pruebas de contrato que verifiquen que su servicio cumple con las promesas del contrato (esquema, SLOs, etc.).
- **Validación (Consumidor):** El pipeline del Consumidor puede incluir pruebas contra un *mock* del servicio del productor, generado a partir del contrato.

## 5. Gestión de Cambios y Evolución

Los contratos evolucionarán. La gestión de cambios se rige por el **Versionado Semántico (SemVer)**.

- **Cambio No Disruptivo (Non-Breaking):**
  - *Ejemplo:* Añadir un nuevo campo opcional a una respuesta.
  - *Proceso:* El Productor puede realizar el cambio, incrementar la versión **MENOR** (ej. `v1.1.0`) y notificar al Consumidor. No se requiere un acuerdo formal.

- **Cambio Disruptivo (Breaking Change):**
  - *Ejemplo:* Renombrar un campo existente, eliminar un endpoint, cambiar el tipo de un dato.
  - *Proceso:* **Se debe iniciar el flujo de trabajo de negociación completo (Fases 1-3)**. El resultado será una nueva versión **MAYOR** del contrato (ej. `v2.0.0`).
  - **Ventana de Deprecación:** El Productor debe mantener la versión antigua del contrato funcionando por un período acordado (la `deprecation_window`) para dar tiempo al Consumidor a migrar.

```

### productos/ASTA-SIGMA/model/guias_marco/matriz_gobernanza.md

```markdown
# Matriz de Gobernanza Computable ASTA-SIGMA

**Versión:** 1.0

Este documento centraliza todos los controles de gobernanza del marco, mapeando cada regla a su implementación y método de verificación. El objetivo es que esta matriz sea la "fuente de la verdad" para la auditoría y la automatización de la gobernanza.

| ID Control | Dominio | Regla de Gobernanza | Implementación (Artefacto Computable) | Método de Verificación (CI/CD Gate) | Tier de Riesgo Aplicable |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **IA-001** | Agente IA | La autonomía del agente no debe superar el nivel `RAG` para sistemas de riesgo R2/R3 sin justificación explícita. | `agent_contract.yaml` (campo `autonomy_level`) | `validate-schema('agent_contract.schema.json')` y `lint-rule('autonomy-check')` | R2, R3 |
| **IA-002** | Agente IA | Todo agente debe operar por defecto en modo `HUMAN_IN_THE_LOOP` para sistemas R2/R3. | `agent_contract.yaml` (campo `interaction_mode`) | `validate-schema('agent_contract.schema.json')` y `lint-rule('hitl-default')` | R2, R3 |
| **IA-003** | Agente IA | El presupuesto mensual de tokens no debe exceder el límite definido. | `agent_contract.yaml` (campo `costs.monthlyTokenBudget`) | `validate-schema('agent_contract.schema.json')` | R1, R2, R3 |
| **IA-004** | Agente IA | Las respuestas de agentes RAG deben incluir citas de la fuente de conocimiento. | `agent_contract.yaml` (campo `ragPolicy.citations.required`) | `validate-schema('agent_contract.schema.json')` | R2, R3 |
| **DATA-001** | Datos | Los productos de datos deben tener un SLO de `freshness` definido. | `data_contract.yaml` (campo `slo.freshness_p95`) | `validate-schema('data_contract.schema.json')` | R1, R2, R3 |
| **DATA-002** | Datos | No debe haber PII en productos de datos clasificados como P1. | `data_contract.yaml` (campo `security.pii`) | `validate-schema('data_contract.schema.json')` y `lint-rule('pii-check')` | R1, R2, R3 |
| **PROC-001** | Proceso | El tiempo de ciclo (p95) de un proceso no debe superar el SLA definido. | `process_contract.yaml` (campo `sla.cycle_time_p95`) | `validate-schema('process_contract.schema.json')` | R2, R3 |
| **API-001** | Servicio | Toda API pública debe tener un `openapi_ref` válido. | `service_contract.yaml` (campo `openapi_ref`) | `validate-schema('service_contract.schema.json')` y `lint-rule('openapi-exists')` | R1, R2, R3 |
| **API-002** | Servicio | El SLO de disponibilidad de una API no debe ser menor a 99.9% para sistemas R3. | `service_contract.yaml` (campo `slo.availability_pct`) | `validate-schema('service_contract.schema.json')` y `lint-rule('slo-min-r3')` | R3 |
| **SUPPLY-001** | Suministro | Toda dependencia externa crítica (R3) debe tener un `op_guide_ref` para contingencias. | `supply_contract.yaml` (campo `contingency_tests.op_guide_ref`) | `validate-schema('supply_contract.schema.json')` | R3 |

```

### productos/ASTA-SIGMA/model/guias_operativas/GO-002_Monitoreo_Calidad_Agentes_IA.md

```markdown
# Guía Operativa: Monitoreo Continuo de Calidad para Agentes de IA

- ID: GO-002
- Versión: 1.0
- Fecha: 2025-09-15
- Relacionado a: `Contrato de Agente`, `Contrato de Conocimiento`

## 1. Situación

El `Contrato de Agente` define SLOs críticos para la calidad de un agente de IA, tales como `slo_fidelidad` y `slo_precision_citas`. A diferencia de las métricas de infraestructura (ej. latencia), estas métricas de calidad no pueden ser monitoreadas con sondas tradicionales. Requieren un proceso robusto para evaluar continuamente el comportamiento del agente frente a un conjunto de verdades conocidas.

Esta guía describe el proceso y los componentes necesarios para implementar un sistema de monitoreo de calidad automatizado para agentes de IA, especialmente aquellos basados en RAG (Generación Aumentada por Recuperación).

## 2. Nivel de Madurez Asociado

La implementación completa de los procesos descritos en esta guía es característica de un equipo con un **Nivel de Madurez 2 (Equipo de Producto Emergente)** o superior, según la `GG-001 Guía de Madurez de Equipos`.

Específicamente, requiere:

- **Capacidades Técnicas (Nivel 2):** Un pipeline de Integración Continua (CI) donde se pueda ejecutar la evaluación automatizada.
- **Enfoque en el Valor (Nivel 2):** La definición y monitoreo de SLOs para servicios críticos.
- **Propiedad y Autonomía (Nivel 2):** Interacción regular con usuarios para obtener feedback que alimente el conjunto de datos de evaluación (vía HITL).

Un equipo de Nivel 1 puede comenzar a construir el `Conjunto de Datos de Evaluación` de forma manual como un primer paso hacia la madurez.

## 3. Componentes del Sistema de Monitoreo

La implementación se basa en tres componentes clave:

1. **Conjunto de Datos de Evaluación (Evaluation Dataset):** Una colección curada de preguntas, contextos y respuestas ideales que representan un "examen" para el agente.
2. **Pipeline de Evaluación Automatizada:** Un script o proceso de CI/CD que ejecuta el agente contra el conjunto de datos de evaluación y calcula las métricas de calidad.
3. **Dashboard de Calidad de IA:** Un panel de visualización que muestra la evolución de las métricas de calidad a lo largo del tiempo.

## 4. Proceso de Implementación Paso a Paso

### Paso 1: Crear y Mantener el Conjunto de Datos de Evaluación

Este es el activo más importante del proceso. Debe ser tratado como código y versionado en Git junto con el agente.

- **Estructura:** El conjunto de datos debe consistir en una lista de casos de prueba. Cada caso debe contener, como mínimo:
  - `id_caso`: Identificador único.
  - `pregunta`: La pregunta de prueba para el agente.
  - `contexto_esperado`: Fragmentos o IDs de los documentos que el agente *debería* recuperar para responder correctamente.
  - `respuesta_ideal`: Una o varias respuestas consideradas correctas y fieles al contexto.
- **Fuentes de Casos de Prueba:**
  - **Diseño Inicial:** Crear un conjunto base de preguntas que cubran los casos de uso más importantes y los escenarios límite.
  - **Feedback de HITL:** Cada vez que un humano corrige una respuesta del agente en la cola de `Humano-en-el-Bucle (HITL)`, esa interacción (pregunta, respuesta fallida, respuesta correcta) debe ser anonimizada y añadida como un nuevo caso de prueba. Esto convierte cada error en una prueba de regresión futura.
  - **Análisis de Logs:** Analizar las preguntas reales de los usuarios para identificar patrones y agregar ejemplos representativos.

### Paso 2: Construir el Pipeline de Evaluación Automatizada

Este pipeline debe ser parte del ciclo de Integración Continua (CI) del agente.

- **Disparador:** El pipeline debe ejecutarse en cada `commit` al código del agente o al conjunto de datos de evaluación.
- **Lógica del Pipeline:**
  1. **Ejecutar el Agente:** Para cada `pregunta` en el conjunto de datos de evaluación, invocar al agente y registrar su respuesta completa (la respuesta generada, los documentos recuperados, etc.).
  2. **Calcular Métricas de Recuperación (Retrieval):**
     - `Precisión de Contexto`: ¿El `contexto_recuperado` por el agente coincide con el `contexto_esperado`? (Métrica: Precisión/Recall/F1).
     - `slo_precision_citas`: ¿Las fuentes citadas por el agente están dentro del `contexto_recuperado`?
  3. **Calcular Métricas de Generación (Generation):**
     - `slo_fidelidad`: Usando un LLM como juez (LLM-as-a-Judge), comparar la `respuesta_generada` con el `contexto_recuperado`. El prompt para el LLM-juez sería: *"¿La siguiente respuesta se basa únicamente en la información proporcionada en el siguiente contexto? Responde SÍ o NO."*
     - `Similitud Semántica`: Comparar la `respuesta_generada` con la `respuesta_ideal` usando embeddings para obtener una puntuación de similitud.
  4. **Publicar Resultados:** Almacenar los resultados (las métricas calculadas para cada caso y los agregados) en una base de datos de series temporales o en un sistema de almacenamiento de artefactos.

### Paso 3: Visualizar y Alertar

- **Dashboard:** Crear un dashboard que muestre la evolución de las métricas clave (`slo_fidelidad`, `slo_precision_citas`, etc.) por cada ejecución del pipeline. Esto permite detectar regresiones en la calidad del agente visualmente.
- **Alertas:** Configurar alertas que se disparen si una ejecución del pipeline de evaluación resulta en una caída de las métricas por debajo de los umbrales definidos en el `Contrato de Agente`. Una caída significativa debe ser tratada como un `build` fallido y bloquear un despliegue a producción.

## 5. Respuesta a Incidentes (Fallo en el Pipeline de Calidad)

- **Detección:** Alerta automática del pipeline de CI/CD.
- **Respuesta Inmediata:**
  1. Bloquear el despliegue automático del agente (si se practica CD).
  2. El equipo de flujo de valor es notificado.
- **Análisis y Remediación:**
  1. Analizar los resultados del pipeline para identificar qué casos de prueba fallaron.
  2. Realizar un análisis de causa raíz: ¿Fue un cambio en el código del agente? ¿Un cambio en el modelo subyacente? ¿Un problema en los datos fuente?
  3. Corregir el problema y volver a ejecutar el pipeline hasta que pase.

Al seguir esta guía, los equipos pueden moverse de una evaluación de calidad de IA manual y esporádica a un monitoreo continuo, automatizado y robusto, tratando la calidad del agente con el mismo rigor que la calidad del código.

```

### productos/ASTA-SIGMA/model/guias_operativas/GO-003_Manual_Redaccion_Telegrafica.md

```markdown
# GO-003: Manual de Ensamblaje de Artefactos ASTA-SIGMA

- **ID:** GO-003
- **Versión:** 2.0
- **Propósito:** Proveer una guía de redacción exhaustiva y prescriptiva para cada campo de los artefactos ASTA-SIGMA, asegurando la máxima precisión, consistencia y computabilidad.

---

## 1. Antes de Empezar: Principios Fundamentales

| Principio | Descripción |
|---|---|
| **Estructura > Prosa** | La información debe ser descompuesta en los campos provistos. La narrativa es un anti-patrón. |
| **Verbo > Adjetivo** | Use verbos en infinitivo para propósitos y capacidades. Céntrese en acciones, no en cualidades. |
| **ID > Nombre** | La referencia a otros artefactos (`ST`, `CAP`, `KPI`) DEBE usar el ID. |
| **Consistencia** | Un concepto, un término. Consulte el glosario del marco. |
| **Cuantificación** | Las metas y resultados DEBEN ser numéricos y medibles. |

---

## 2. Instrucciones de Ensamblaje: Ficha de Sistema de Trabajo (ST)

### `propósitoYValorPublico`

- **Objetivo:** Responder: ¿Cuál es la función principal de este sistema y qué valor entrega a sus usuarios?
- **Formato:** Una sola frase. Inicia con verbo(s) en infinitivo. Describe la función y luego el beneficio.
- **Reglas Clave:**
  - **HACER:** Usar la fórmula: `[VERBO(s)] [QUÉ] para [BENEFICIO]`. Ser específico.
  - **NO HACER:** Usar prosa, adjetivos vagos ("eficiente", "robusto") o describir características técnicas.
- **Ejemplos:**
  - **MALO:** `Esta es la plataforma interna que usamos para los flujos. Es muy importante y eficiente.`
  - **REGULAR:** `Orquestar los flujos de trabajo del GORE.`
  - **BUENO:** `Orquestar, automatizar y hacer trazables los flujos de trabajo críticos del ciclo de IPR para aumentar la eficiencia y el cumplimiento.`

### `capacidadesOfrecidas`

- **Objetivo:** Declarar los servicios de alto nivel que este ST provee a otros ST dentro de la organización.
- **Formato:** Lista de objetos, cada uno con `id`, `nombre` y `descripcion`.
  - `id`: `CAP-[TEMA]-[NOMBRE_CORTO]`
  - `nombre`: `[Sustantivo] como Servicio`
- **Reglas Clave:**
  - **HACER:** Pensar en la capacidad como un producto interno. El nombre debe ser genérico y reutilizable.
  - **NO HACER:** Describir funcionalidades de bajo nivel o procesos internos.
- **Ejemplos:**
  - **MALO:** `nombre: Hacer mapas`
  - **REGULAR:** `nombre: Servicio de Datos Geoespaciales`
  - **BUENO:** `id: CAP-INT-TERRITORIAL`, `nombre: Inteligencia Territorial como Servicio`

### `dependenciasInternas`

- **Objetivo:** Crear el grafo de dependencias. Responder: ¿Qué capacidades de otros ST necesita este sistema para funcionar?
- **Formato:** Lista de strings, usando la fórmula: `Consume [ID_CAPACIDAD] de [ID_ST_PROVEEDOR] para [PROPÓSITO]`.
- **Reglas Clave:**
  - **HACER:** Usar los IDs exactos de la capacidad y del ST proveedor. Ser explícito en el propósito del consumo.
  - **NO HACER:** Usar nombres en lugar de IDs. Ser vago sobre la dependencia.
- **Ejemplos:**
  - **MALO:** `Necesita la IDE para los mapas.`
  - **REGULAR:** `Consume la capacidad de inteligencia territorial de la IDE Ñuble.`
  - **BUENO:** `Consume CAP-INT-TERRITORIAL de ST-IDE-NUBLE para mostrar mapas y alertas geolocalizadas.`

---

## 3. Instrucciones de Ensamblaje: Contrato de Agente (IA)

### `rol_delegado`

- **Objetivo:** Describir la tarea específica y acotada que se delega al agente de IA.
- **Formato:** Frase que inicia con un verbo. Debe ser una instrucción precisa, como en un manual de procesos.
- **Reglas Clave:**
  - **HACER:** Definir el alcance y los límites de la tarea. Mencionar la normativa o estándar de referencia si aplica.
  - **NO HACER:** Ser genérico o describir la función en términos de negocio amplios.
- **Ejemplos:**
  - **MALO:** `El agente revisa las rendiciones para ver si están bien.`
  - **REGULAR:** `Verificar la consistencia de los documentos de rendición.`
  - **BUENO:** `Pre-auditar documentos de rendición de cuentas para verificar su consistencia con la normativa (Res. 30 CGR) y las bases del proyecto.`

### `puntos_control_hitl` (Humano-en-el-Bucle)

- **Objetivo:** Definir las condiciones exactas bajo las cuales el agente DEBE detenerse y escalar a un humano.
- **Formato:** Lista de condiciones `if-then`.
- **Reglas Clave:**
  - **HACER:** Usar umbrales numéricos (ej. `puntuacion_confianza < 0.85`), eventos de negocio específicos o muestreos estadísticos.
  - **NO HACER:** Usar condiciones subjetivas como "si el agente no está seguro".
- **Ejemplos:**
  - **MALO:** `Cuando el agente tenga dudas.`
  - **REGULAR:** `Si se detecta una inconsistencia.`
  - **BUENO:** `Si el agente detecta una inconsistencia o posible observación.` Y `Para un muestreo aleatorio del 10% de los documentos validados como correctos.`

---

## 4. Instrucciones de Ensamblaje: Ficha de Iniciativa

### `description` (en `impactsSystemOfWork`)

- **Objetivo:** Describir el cambio de estado que esta iniciativa producirá en el ST afectado.
- **Formato:** Frase que inicia con un verbo. Describe la acción y el componente afectado.
- **Reglas Clave:**
  - **HACER:** Ser preciso sobre el cambio. Mencionar el ID del componente si es relevante (ej. un agente).
  - **NO HACER:** Describir las actividades del proyecto en lugar del impacto en el sistema.
- **Ejemplos:**
  - **MALO:** `Vamos a trabajar en el nuevo agente de IA.`
  - **REGULAR:** `Crear el agente de asistencia financiera.`
  - **BUENO:** `Implementa el agente ag_asistencia_financiera dentro del flujo de rendición de cuentas del ST-NEXO-GORE.`

### `definitionOfDone`

- **Objetivo:** Definir criterios de éxito medibles y no ambiguos. Responder: ¿Cómo sabremos que hemos terminado y tenido éxito?
- **Formato:** Lista de aserciones cuantificables que deben ser verdaderas.
- **Reglas Clave:**
  - **HACER:** Usar métricas, umbrales y resultados verificables. Cada criterio debe ser una prueba de aceptación.
  - **NO HACER:** Usar términos subjetivos ("funciona bien", "es satisfactorio", "está completo").
- **Ejemplos:**
  - **MALO:** `El agente funciona y los usuarios están contentos.`
  - **REGULAR:** `El agente detecta errores en las rendiciones.`
  - **BUENO:** `El agente ag_asistencia_financiera alcanza una precisión >95% en la detección de los 5 errores más comunes en el set de datos de prueba.`

---

*Este manual es de cumplimiento obligatorio. La calidad del portafolio de arquitectura depende de la aplicación rigurosa de estas reglas.*

```

### productos/ASTA-SIGMA/model/guias_operativas/GO-004_GameDays_Proveedores_y_DR.md

```markdown
# GO-004: Guía Operativa para Game Days de Proveedores y Pruebas de DR

- **ID:** GO-004
- **Versión:** 1.0
- **Fecha:** YYYY-MM-DD
- **Propietario:** [Rol/Equipo Responsable de SRE/Plataforma]

## 1. Propósito

Esta guía establece el protocolo estándar para la planificación, ejecución y análisis de *game days* (ejercicios de simulación de fallos) con proveedores de servicios críticos. El objetivo es verificar de forma proactiva la resiliencia de la cadena de suministro digital y validar los RTO/RPO definidos en los `Contratos de Suministro`.

## 2. Alcance

Este procedimiento aplica a todas las dependencias externas que soporten Sistemas de Trabajo clasificados como R2 (Medio Riesgo) o R3 (Alto Riesgo).

## 3. Protocolo del Game Day

### 3.1. Fase de Planificación (Semana -2)

1. **Seleccionar Escenario de Fallo:**
   - Ej: Caída total de la API del proveedor, latencia extrema (>5s), corrupción de datos en la respuesta.
2. **Definir Hipótesis y Métricas:**
   - **Hipótesis:** "Si la API de identidad cae, nuestro sistema activará el circuit breaker y operará con caché local durante 15 minutos sin que la disponibilidad del servicio `ST-XXX` caiga por debajo del 99.0%."
   - **Métricas a Medir:** Tiempo de detección (MTTD), Tiempo de mitigación (MTTM), RTO, RPO, % de errores de usuario.
3. **Coordinar con el Proveedor:** Agendar la ventana de prueba y definir los roles y canales de comunicación.

### 3.2. Fase de Ejecución (Día 0)

1. **Establecer Sala de Guerra (War Room):** Reunir a los ingenieros de SRE, el equipo de flujo de valor y el punto de contacto del proveedor.
2. **Verificar Estado del Sistema (Línea Base):** Confirmar que todos los sistemas operan normalmente antes de la prueba.
3. **Inyectar el Fallo:** Ejecutar la acción que simula el escenario de fallo.
4. **Monitorear y Medir:** Observar el comportamiento del sistema, medir los SLIs clave y registrar el cronograma de eventos.
5. **Finalizar la Prueba y Revertir:** Detener la inyección de fallos y asegurar que el sistema vuelve a su estado normal.

### 3.3. Fase de Análisis y Postmortem (Semana +1)

1. **Recopilar Datos:** Consolidar todas las métricas, logs y observaciones del equipo.
2. **Realizar RCA (Análisis de Causa Raíz):**
   - ¿Qué salió bien? ¿Qué salió mal?
   - ¿Se cumplió la hipótesis? ¿Se cumplieron los RTO/RPO contractuales?
3. **Generar Plan de Acción:** Crear un backlog de mejoras (ej. ajustar timeouts, mejorar alertas, modificar el plan de contingencia).
4. **Publicar Informe:** Documentar los hallazgos y el plan de acción en un informe estandarizado y compartirlo con los stakeholders.

```

### productos/ASTA-SIGMA/model/guias_operativas/GO-005_Diseno_UI.md

```markdown
# GO-005: Guía Operativa de Diseño de Interfaz de Usuario (UI)

- **ID:** GO-005
- **Versión:** 1.0
- **Propósito:** Establecer los principios y estándares mínimos para el diseño de todas las interfaces de usuario, asegurando consistencia, usabilidad y accesibilidad en el portafolio de aplicaciones.

---

## 1. Principios Fundamentales de UI

| Principio | Descripción |
|---|---|
| **Claridad sobre Abundancia** | La interfaz debe ser intuitiva y fácil de entender. Cada elemento debe tener un propósito claro. Evite la sobrecarga de información. |
| **Consistencia Interna y Externa** | Los componentes de UI deben comportarse de la misma manera en toda la aplicación (interna) y, siempre que sea posible, seguir los patrones establecidos por el sistema operativo o la plataforma web (externa). |
| **Feedback Inmediato** | El sistema debe informar al usuario lo que está sucediendo. Cada acción del usuario (un clic, un envío de formulario) debe tener una respuesta visible e inmediata (un spinner, un mensaje de éxito/error). |
| **Prevención de Errores** | Es mejor diseñar interfaces que eviten que los errores ocurran en primer lugar, que construir elaborados sistemas de recuperación de errores. Use confirmaciones para acciones destructivas. |
| **Accesibilidad por Defecto** | Todas las interfaces deben ser diseñadas para ser utilizables por el mayor número posible de personas, incluyendo aquellas con discapacidades. Esto no es una característica opcional, es un requisito. |

---

## 2. Sistema de Diseño y Componentes

- **Sistema de Diseño de Referencia:** [Ej: Se debe utilizar el Sistema de Diseño del Gobierno de Chile como base para todos los nuevos desarrollos. Link: https://diseno.gob.cl/]
- **Componentes Permitidos:**
  - **HACER:** Utilizar los componentes (botones, formularios, modales) definidos en el sistema de diseño de referencia siempre que sea posible.
  - **NO HACER:** Crear componentes personalizados si existe una alternativa estándar. Si un componente personalizado es absolutamente necesario, debe ser documentado y aprobado por el equipo de plataforma.

---

## 3. Estándares de Accesibilidad (WCAG 2.1 Nivel AA)

*El cumplimiento de estos estándares es obligatorio.*

- **Contraste de Color:** Todo el texto debe tener un ratio de contraste de al menos 4.5:1 con su fondo.
- **Texto Alternativo para Imágenes:** Todas las imágenes que transmitan información deben tener un atributo `alt` descriptivo.
- **Navegación por Teclado:** Todas las funcionalidades interactivas deben ser accesibles y operables utilizando solo el teclado.
- **Etiquetas en Formularios:** Todos los campos de formulario deben tener etiquetas (`<label>`) asociadas programáticamente.
- **Manejo de Foco:** El foco del teclado debe ser visible y moverse de una manera lógica a través de la página.

---

## 4. Checklist de Revisión de UI

*Antes de que una nueva interfaz o cambio sea aprobado para producción, debe pasar esta revisión.*

- [ ] **Claridad:** ¿Se entiende el propósito de la pantalla en menos de 5 segundos?
- [ ] **Consistencia:** ¿Los botones, colores y tipografías son consistentes con el resto de la aplicación y el sistema de diseño?
- [ ] **Feedback:** ¿Cada acción interactiva proporciona una respuesta clara al usuario?
- [ ] **Prevención de Errores:** ¿Las acciones destructivas (ej. eliminar) piden confirmación?
- [ ] **Accesibilidad:**
  - [ ] ¿El contraste de color cumple el ratio 4.5:1? (Usar un validador de contraste).
  - [ ] ¿Todas las imágenes tienen texto alternativo?
  - [ ] ¿Se puede navegar y operar toda la interfaz usando solo el teclado?
  - [ ] ¿Los campos de formulario están correctamente etiquetados?
- [ ] **Responsividad:** ¿La interfaz se visualiza y funciona correctamente en dispositivos móviles y de escritorio?

---

## 5. Validación Automatizada (CI/CD)

El cumplimiento de los estándares de accesibilidad no debe depender únicamente de la revisión manual. Es un requisito obligatorio integrar herramientas de análisis de accesibilidad automatizadas (como Axe o Pa11y) en el pipeline de Integración Continua (CI).

- **Gate de Calidad:** Un `build` para una rama de `release` **debe fallar** si el análisis automatizado detecta violaciones de accesibilidad de nivel crítico (WCAG Nivel A o AA).
- **Umbral de Aceptación:** El umbral de issues críticos aceptables es **cero**.

```

### productos/ASTA-SIGMA/model/guias_operativas/templates/GO_template.md

```markdown
# Guía Operativa: [Nombre de la Guía]

- ID: GO-XXX
- Versión: 1.0
- Fecha: YYYY-MM-DD

## 1. Situación

*Descripción del problema o escenario que esta guía aborda.*

## 2. Proceso de Respuesta

*Pasos detallados para manejar la situación, incluyendo acciones automatizadas y manuales.*

## 3. Roles y Responsabilidades

*Quién es responsable de cada paso del proceso.*

## 4. Análisis Post-Incidente

*Cómo aprender de la situación para mejorar el sistema a largo plazo.*

```

### productos/ASTA-SIGMA/model/schemas/agent_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Agent Contract",
  "description": "Schema for validating an AI Agent Contract.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "agent_contract"
    },
    "agent_id": {
      "type": "string",
      "pattern": "^AG-[0-9]{3}$"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "model": {
      "type": "object",
      "properties": {
        "provider": {
          "type": "string"
        },
        "name": {
          "type": "string"
        },
        "version": {
          "type": "string"
        },
        "endpoint": {
          "type": "string"
        }
      },
      "required": ["provider", "name"]
    },
    "hcai_purpose": {
      "type": "string",
      "enum": ["ASSIST", "AUGMENT", "ORCHESTRATE", "AUTOMATE"]
    },
    "cognitive_function": {
      "type": "string",
      "enum": ["SENSE", "DECIDE", "ACT", "SENSE_AND_DECIDE", "DECIDE_AND_ACT", "SENSE_DECIDE_ACT"]
    },
    "autonomy_level": {
      "type": "string",
      "enum": ["NONE", "ASSISTED", "SUPERVISED", "RAG", "SEMIAUTONOMOUS", "AUTONOMOUS"]
    },
    "responsibility_level": {
      "type": "string",
      "enum": ["PROVIDE_INFO", "RECOMMEND", "APPROVE", "EXECUTE"]
    },
    "interaction_mode": {
      "type": "string",
      "enum": ["HUMAN_IN_THE_LOOP", "HUMAN_OVER_THE_LOOP", "MACHINE_IN_THE_LOOP"]
    },
    "legal_purpose": {
      "type": "string"
    },
    "base_legal_uso_datos": {
      "type": "string"
    },
    "final_human_supervisor": {
      "type": "string"
    },
    "telemetry": {
      "type": "object",
      "properties": {
        "openTelemetry": {
          "type": "boolean"
        },
        "correlationFields": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "minLogFields": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      },
      "required": ["openTelemetry"]
    },
    "costs": {
      "type": "object",
      "properties": {
        "monthlyTokenBudget": {
          "type": "integer"
        },
        "monthlyUSDBudget": {
          "type": "integer"
        },
        "alerts": {
          "type": "object",
          "properties": {
            "warn_pct": {
              "type": "number"
            },
            "hard_stop_pct": {
              "type": "number"
            }
          },
          "required": ["warn_pct", "hard_stop_pct"]
        }
      }
    },
    "security_and_privacy": {
      "type": "object",
      "properties": {
        "piiDlp": {
          "type": "object",
          "properties": {
            "policy": {
              "type": "string"
            },
            "logRetentionDays": {
              "type": "integer"
            }
          }
        },
        "policies": {
          "type": "object",
          "properties": {
            "toolAllowlist": {
              "type": "array",
              "items": {
                "type": "string"
              }
            },
            "operationDenylist": {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          }
        }
      }
    },
    "quality_and_resilience": {
      "type": "object",
      "properties": {
        "hitl": {
          "type": "object"
        },
        "ragPolicy": {
          "type": "object"
        },
        "qualityMetrics": {
          "type": "object"
        }
      }
    },
    "lifecycle": {
      "type": "object",
      "properties": {
        "status": {
          "type": "string",
          "enum": ["pilot", "production", "deprecated", "retired"]
        },
        "mandatoryKillSwitch": {
          "type": "boolean"
        },
        "promotionToProductionCriteria": {
          "type": "object"
        },
        "rollbackPlanDefined": {
          "type": "boolean"
        }
      },
      "required": ["status", "mandatoryKillSwitch"]
    },
    "evaluation": {
      "type": "object"
    },
    "tasks": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "id": {
            "type": "string"
          },
          "type": {
            "type": "string"
          },
          "temperature_max": {
            "type": "number"
          },
          "top_p_max": {
            "type": "number"
          }
        },
        "required": ["id", "type"]
      }
    }
  },
  "required": [
    "kind",
    "agent_id",
    "version",
    "model",
    "hcai_purpose",
    "cognitive_function",
    "autonomy_level",
    "responsibility_level",
    "interaction_mode",
    "lifecycle"
  ]
}

```

### productos/ASTA-SIGMA/model/schemas/collaboration_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Collaboration Contract",
  "description": "Schema for validating a Collaboration Contract between organizations.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "collaboration_contract"
    },
    "agreement_id": {
      "type": "string"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "participants": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "entity": {
            "type": "string"
          },
          "role": {
            "type": "string"
          }
        },
        "required": ["entity", "role"]
      }
    },
    "common_objective": {
      "type": "string"
    },
    "governance_agreements": {
      "type": "array",
      "items": {
        "type": "string"
      }
    },
    "shared_services": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "service_id": {
            "type": "string"
          },
          "name": {
            "type": "string"
          },
          "provider": {
            "type": "string"
          },
          "description": {
            "type": "string"
          },
          "agreed_sla": {
            "type": "string"
          }
        },
        "required": ["service_id", "name", "provider"]
      }
    },
    "responsibilities": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "entity": {
            "type": "string"
          },
          "responsibility": {
            "type": "string"
          }
        },
        "required": ["entity", "responsibility"]
      }
    }
  },
  "required": [
    "kind",
    "agreement_id",
    "version",
    "participants",
    "common_objective"
  ]
}

```

### productos/ASTA-SIGMA/model/schemas/data_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Data Contract",
  "description": "Schema for validating a Data Contract.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "data_contract"
    },
    "product_name": {
      "type": "string"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "interfaces": {
      "type": "array",
      "items": {
        "type": "string"
      }
    },
    "schema": {
      "type": "object",
      "properties": {
        "version": {
          "type": "string",
          "pattern": "^\\d+\\.\\d+\\.\\d+$"
        },
        "primaryKey": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "fields": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "name": {
                "type": "string"
              },
              "type": {
                "type": "string"
              },
              "required": {
                "type": "boolean"
              }
            },
            "required": ["name", "type", "required"]
          }
        }
      },
      "required": ["version", "fields"]
    },
    "quality": {
      "type": "object",
      "properties": {
        "checks": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "name": {
                "type": "string"
              },
              "rule": {
                "type": "string"
              },
              "severity": {
                "type": "string",
                "enum": ["error", "warn"]
              }
            },
            "required": ["name", "rule", "severity"]
          }
        }
      }
    },
    "slo": {
      "type": "object",
      "properties": {
        "freshness_p95": {
          "type": "string"
        },
        "availability_pct": {
          "type": "number"
        }
      },
      "required": ["freshness_p95", "availability_pct"]
    },
    "security": {
      "type": "object",
      "properties": {
        "classification": {
          "type": "string"
        },
        "pii": {
          "type": "boolean"
        }
      },
      "required": ["classification", "pii"]
    },
    "governance": {
      "type": "object",
      "properties": {
        "lineage": {
          "type": "object",
          "properties": {
            "sources": {
              "type": "array",
              "items": {
                "type": "string"
              }
            }
          }
        },
        "retention": {
          "type": "object",
          "properties": {
            "duration": {
              "type": "string"
            }
          }
        },
        "legalBasisForProcessing": {
          "type": "string"
        },
        "dpiaReference": {
          "type": "string"
        }
      }
    }
  },
  "required": [
    "kind",
    "product_name",
    "version",
    "interfaces",
    "schema",
    "quality",
    "slo",
    "security",
    "governance"
  ]
}

```

### productos/ASTA-SIGMA/model/schemas/knowledge_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Knowledge Contract",
  "description": "Schema for validating a Knowledge (RAG) Contract.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "knowledge_contract"
    },
    "collection_name": {
      "type": "string"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "source_authority_list": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "issuer": {
            "type": "string"
          },
          "types": {
            "type": "array",
            "items": {
              "type": "string"
            }
          }
        },
        "required": ["issuer", "types"]
      }
    },
    "blocked_sources": {
      "type": "array",
      "items": {
        "type": "string"
      }
    },
    "expiry_policy": {
      "type": "object",
      "properties": {
        "default": {
          "type": "string",
          "description": "ISO 8601 duration format."
        },
        "override_by_type": {
          "type": "object"
        }
      },
      "required": ["default"]
    },
    "retention": {
      "type": "object",
      "properties": {
        "duration": {
          "type": "string",
          "description": "ISO 8601 duration format."
        }
      },
      "required": ["duration"]
    },
    "indexing": {
      "type": "object",
      "properties": {
        "min_metadata": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "mandatory_filters": {
          "type": "array",
          "items": {
            "type": "object"
          }
        }
      },
      "required": ["min_metadata"]
    },
    "citations": {
      "type": "object",
      "properties": {
        "style": {
          "type": "string",
          "enum": ["required_exact", "required_summary", "optional"]
        },
        "fields": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      },
      "required": ["style", "fields"]
    }
  },
  "required": [
    "kind",
    "collection_name",
    "version",
    "source_authority_list",
    "expiry_policy",
    "retention",
    "indexing",
    "citations"
  ]
}

```

### productos/ASTA-SIGMA/model/schemas/process_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Process Contract",
  "description": "Schema for validating a Process Contract.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "process_contract"
    },
    "process_name": {
      "type": "string"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "sla": {
      "type": "object",
      "properties": {
        "cycle_time_p95": {
          "type": "string",
          "description": "ISO 8601 duration format."
        },
        "stp_target_pct": {
          "type": "integer",
          "minimum": 0,
          "maximum": 100
        }
      },
      "required": ["cycle_time_p95", "stp_target_pct"]
    },
    "hitl": {
      "type": "object",
      "properties": {
        "queues": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      }
    },
    "saga": {
      "type": "object",
      "properties": {
        "compensations": {
          "type": "array",
          "items": {
            "type": "object",
            "properties": {
              "action": {
                "type": "string"
              },
              "on": {
                "type": "string"
              }
            },
            "required": ["action", "on"]
          }
        }
      }
    }
  },
  "required": [
    "kind",
    "process_name",
    "version",
    "sla"
  ]
}

```

### productos/ASTA-SIGMA/model/schemas/service_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Service Contract",
  "description": "Schema for validating a Service (API) Contract.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "service_contract"
    },
    "service_id": {
      "type": "string"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "openapi_ref": {
      "type": "string",
      "description": "Relative path to the OpenAPI specification file."
    },
    "lifecycle": {
      "type": "string",
      "enum": ["development", "testing", "production", "deprecated"]
    },
    "slo": {
      "type": "object",
      "properties": {
        "availability_pct": {
          "type": "number"
        },
        "latency_p95_ms": {
          "type": "integer"
        },
        "error_rate_pct_max": {
          "type": "number"
        }
      },
      "required": ["availability_pct", "latency_p95_ms", "error_rate_pct_max"]
    },
    "error_budget": {
      "type": "object",
      "properties": {
        "window_days": {
          "type": "integer"
        },
        "actions_on_breach": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      }
    },
    "security": {
      "type": "object",
      "properties": {
        "authn": {
          "type": "string"
        },
        "authz": {
          "type": "string"
        },
        "audit_log": {
          "type": "string"
        }
      },
      "required": ["authn", "authz"]
    },
    "ratelimits": {
      "type": "object",
      "properties": {
        "rps": {
          "type": "integer"
        },
        "burst": {
          "type": "integer"
        }
      }
    },
    "compliance": {
      "type": "object",
      "properties": {
        "sbom_required": {
          "type": "boolean"
        },
        "slsa_min_level": {
          "type": "string"
        }
      }
    },
    "contract_tests": {
      "type": "object",
      "properties": {
        "dredd": {
          "type": "string"
        },
        "prism_mock": {
          "type": "string"
        }
      }
    }
  },
  "required": [
    "kind",
    "service_id",
    "version",
    "openapi_ref",
    "lifecycle",
    "slo"
  ]
}

```

### productos/ASTA-SIGMA/model/schemas/supply_contract.schema.json

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "ASTA-SIGMA Supply Contract",
  "description": "Schema for validating a Supply Contract for an external dependency.",
  "type": "object",
  "properties": {
    "kind": {
      "type": "string",
      "const": "supply_contract"
    },
    "dependency_id": {
      "type": "string",
      "pattern": "^DEP-[0-9]{3}$"
    },
    "provider_name": {
      "type": "string"
    },
    "service_name": {
      "type": "string"
    },
    "version": {
      "type": "string",
      "pattern": "^\\d+\\.\\d+\\.\\d+$"
    },
    "sla": {
      "type": "object",
      "properties": {
        "availability_pct": {
          "type": "number"
        },
        "response_time_p95": {
          "type": "string",
          "description": "ISO 8601 duration format."
        }
      },
      "required": ["availability_pct", "response_time_p95"]
    },
    "error_budget": {
      "type": "object",
      "properties": {
        "monthly_target_pct": {
          "type": "number"
        },
        "sla_remedies": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      }
    },
    "compliance": {
      "type": "object",
      "properties": {
        "sbom_required": {
          "type": "boolean"
        },
        "slsa_min_level": {
          "type": "string"
        },
        "audits": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "client_audit_rights": {
          "type": "boolean"
        }
      }
    },
    "security": {
      "type": "object",
      "properties": {
        "shared_data": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "regulatory_compliance": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      }
    },
    "capacity_and_quotas": {
      "type": "object"
    },
    "incident_communications": {
      "type": "object"
    },
    "contingency_tests": {
      "type": "object"
    }
  },
  "required": [
    "kind",
    "dependency_id",
    "provider_name",
    "service_name",
    "version",
    "sla"
  ]
}

```

### productos/ASTA-SIGMA/org/governance/RACI.md

```markdown
# Matriz RACI — Transformación Digital

| Actividad                               | Comité TIC | CTD | DPO | CISO | Unidad Dueña | EFV |
|-----------------------------------------|:----------:|:---:|:---:|:----:|:------------:|:---:|
| Aprobación políticas TDE/DP/IA          |     A      |  R  |  C  |  C   |      C       |  I  |
| Priorización ST a digitalizar           |     A      |  R  |  I  |  C   |      R       |  R  |
| EIPD (si aplica)                        |     C      |  R  |  A  |  C   |      R       |  I  |
| Incidente de datos/IA                   |     I      |  R  |  A  |  A   |      C       |  I  |
| Integración plataformas compartidas     |     C      |  R  |  C  |  R   |      R       |  I  |
| Revisión de Valor y Capacidad (RVC)     |     A      |  R  |  I  |  I   |      C       |  R  |

```

### productos/ASTA-SIGMA/org/governance/comite_tic_ctd.md

```markdown
# Comité TIC + Coordinación TDE (CTD)

**Objetivo:** dirigir la transformación digital, asegurar cumplimiento TDE/SGD, y priorizar inversiones alineadas a EGD‑2030.

**Composición mínima:** Autoridad Superior (preside), CTD, Jefatura TIC, DPO, CISO, Jurídico, Finanzas, Operaciones.

**Cadencia:** mensual (ordinaria) y extraordinaria ante incidentes o hitos regulatorios.

**Atribuciones:** aprobar políticas tecnológicas y de datos, priorizar portafolio, resolver impedimentos, patrocinar integraciones con plataformas compartidas del Estado.

```

### productos/ASTA-SIGMA/org/mappings/efv_to_st.yaml

```yaml
# Completa con tus primeros ST (p. ej. ST-TRAMITE-001)
- efv_id: EFV-EJEMPLO
  st: []

```

### productos/ASTA-SIGMA/org/mappings/units_to_efv.yaml

```yaml
- unit_id: UN-EJEMPLO
  efv: [EFV-EJEMPLO]

```

### productos/ASTA-SIGMA/org/organization.yaml

```yaml
org_id: ORG-SIGLA
nombre: "Nombre Oficial de la Organización"
mandato_legal: ["Ley 18.575", "Ley 21.658", "Ley 21.180"]
contactos_clave:
  ctd:  "Nombre CTD <ctd@org.cl>"
  dpo:  "Nombre DPO <dpo@org.cl>"
  ciso: "Nombre CISO <ciso@org.cl>"
principios:
  egd2030: [digital_por_diseno, centrado_en_personas, gobierno_integrado]
  mgde: [datos_activo_estrategico, catalogo_mandatorio, responsable_por_dato]
observaciones: |
  Ajusta esta ficha como “fuente única” de identidad institucional del marco.

```

### productos/ASTA-SIGMA/org/policies_org/POL-ORG-SEGURIDAD.md

```markdown
# Política Organizacional de Seguridad (extracto)

- Modelo de control: Zero‑Trust + RBAC/ABAC.
- Observabilidad: OpenTelemetry (trazas, métricas, logs).
- Continuidad: BCP/DRP probado semestralmente (GameDays).
- Gestión de proveedores: contratos con RTO/RPO, cláusulas de auditoría y pruebas de contingencia.

```

### productos/ASTA-SIGMA/org/units/UN-EJEMPLO.yaml

```yaml
unit_id: UN-EJEMPLO
nombre: "División/Departamento de Ejemplo"
capabilities: [gestion_actos_adm, notificaciones, compliance]
jefatura: "Jefe/a Unidad <jefatura@org.cl>"

```

### productos/ASTA-SIGMA/org/value_streams/EFV-EJEMPLO.yaml

```yaml
efv_id: EFV-EJEMPLO
objetivo: "Entregar servicios digitales simples e inclusivos"
kpi: [tiempo_ciclo, nps, tasa_exito]
unidades: [UN-EJEMPLO]

```

### productos/ASTA-SIGMA/policies/POL-ABUSO-LLM.yaml

```yaml
# Política Computable de Pruebas de Abuso para LLMs
id: POL-ABUSO-LLM
version: 1.0
status: active
date: '2025-09-22'

terms:
  - name: "Suite de Pruebas de Seguridad para Agentes LLM"
    policy:
      name: "Política de Pruebas de Abuso de LLM"
      description: "Establece la obligatoriedad de ejecutar pruebas de seguridad automáticas contra vulnerabilidades comunes en LLMs (OWASP LLM Top 10) para todos los agentes expuestos a usuarios."
      definition:
        min_test_cases: 200
        test_case_distribution: "Balanced across OWASP LLM Top 10 categories."
        corpus_requirements: "Must include public and private seed sets."
        drift_check_cadence: "quarterly"
        operational_guide_ref: "GO-002"
      rules:
        - id: "abuso-rule-001"
          name: "Ejecución de Suite Anti-Jailbreak"
          description: "Se debe ejecutar una suite de pruebas de seguridad (ej. inyección de prompts, exfiltración de datos) en el pipeline de CI/CD."
          condition: "agente.is_public_facing == true"
          evidenceRequired:
            - "El pipeline debe reportar un score de éxito >= 95% en la suite de pruebas de abuso, cumpliendo con los requisitos de corpus y distribución definidos."
            - "Un score inferior al umbral debe bloquear el despliegue a producción."

```

### productos/ASTA-SIGMA/policies/POL-FINOPS-IA.yaml

```yaml
# Política Computable de FinOps para Agentes de IA
id: POL-FINOPS-IA
version: 1.0
status: active
date: '2025-09-22'

terms:
  - name: "Reglas de FinOps para Agentes de IA"
    policy:
      name: "Política de Control de Costos y Presupuestos para IA"
      description: "Establece los límites de gasto, alertas y acciones automáticas para todos los agentes de IA, con reglas diferenciadas por Tier de Riesgo."
      definition:
        implementation_point: "API Gateway and Observability Platform"
        override_process_ref: "The manual override process for R3 systems must be documented in a GO."
      rules:
        - id: "finops-rule-001"
          name: "Presupuesto Mensual Obligatorio"
          description: "Todo agente debe tener un presupuesto definido en su Contrato."
          evidenceRequired:
            - "El campo `costos.budget_usd_mensual` en el Contrato de Agente debe ser > 0."
        - id: "finops-rule-002"
          name: "Alerta de Consumo de Presupuesto"
          description: "Se debe generar una alerta cuando el consumo del presupuesto mensual exceda el 80%."
          condition: "consumo_actual_usd / budget_usd_mensual >= 0.8"
          action: "Notificar al Equipo de Flujo de Valor y al Líder de FinOps."
        - id: "finops-rule-003"
          name: "Rate-Limit y Hard-Stop por Tier de Riesgo"
          description: "Acciones automáticas al exceder el 100% del presupuesto."
          rules_by_tier:
            R1_BAJO:
              action: "Activar hard-stop del servicio."
            R2_MEDIO:
              action: "Activar hard-stop del servicio."
            R3_ALTO:
              action: "Activar rate-limit severo y requerir aprobación manual para override."

```

### productos/ASTA-SIGMA/policies/POL-TRAZA-IA.yaml

```yaml
# Política Computable de Trazabilidad para Agentes de IA
id: POL-TRAZA-IA
version: 1.0
status: active
date: '2025-09-22'

terms:
  - name: "Cobertura de Telemetría OTel para IA/RAG"
    policy:
      name: "Política de Trazabilidad de IA"
      description: "Garantiza que todas las transacciones de agentes de IA de riesgo generen evidencia forense completa y auditable, según el estándar OTel definido en ADR-003."
      definition:
        coverage_formula: "ai_interactions_traced / ai_interactions_total"
        ai_interactions_total: "count(requests where component='agent' and outcome in ['ok','error'])"
        ai_interactions_traced: "count(requests with span_kind='client' and attributes contains ['ai.model','ai.tokens_in'])"
        min_coverage_pct_by_tier:
          R1_BAJO: 90
          R2_MEDIO: 95
          R3_ALTO: 98
        required_attributes:
          - ai.provider
          - ai.model
          - ai.tokens_in
          - ai.tokens_out
          - ai.ttft_ms
          - ai.rag.citations_count
          - ai.rag.retrieved_docs
      rules:
        - id: "traza-rule-001"
          name: "Cobertura de Trazas en Sistemas de Riesgo"
          description: "Los agentes en sistemas R2 y R3 deben tener una cobertura de trazas OTel completa."
          condition: "sistema.risk_tier in ['R2_MEDIO', 'R3_ALTO']"
          evidenceRequired:
            - "El pipeline de CI/CD debe demostrar una cobertura de spans OTel >= 95% para los flujos de IA."
            - "El `Contrato de Agente` debe tener el campo `telemetria.opentelemetry` en `true`."

```

### productos/ASTA-SIGMA/policies/politica_slo_por_riesgo.yaml

```yaml
# Politica de SLOs Minimos por Tier de Riesgo (v1.1 con IA/FinOps)
# Define los objetivos de fiabilidad, calidad y costo minimos que un servicio debe cumplir
# segun su clasificacion de riesgo. Es validado en el pipeline de CI/CD.

terms:
  - name: "SLOs por Tier de Riesgo"
    risk_tiers:
      R1_BAJO:
        disponibilidad_pct: 99.0
        latencia_p95_ms: 2500
        ttft_p95_ms: 1500
        tasa_error_max_pct: 5
        costo_1k_tokens_usd_max: 0.04
      R2_MEDIO:
        disponibilidad_pct: 99.5
        latencia_p95_ms: 1500
        ttft_p95_ms: 900
        tasa_error_max_pct: 2
        costo_1k_tokens_usd_max: 0.06
        fidelidad_min: 0.97
        precision_citas_min: 0.98
      R3_ALTO:
        disponibilidad_pct: 99.9
        latencia_p95_ms: 500
        ttft_p95_ms: 400
        tasa_error_max_pct: 1
        costo_1k_tokens_usd_max: 0.08
        fidelidad_min: 0.98
        precision_citas_min: 0.99
    error_budget:
      ventana_dias: 30
      accion_si_rojo: ["congelar despliegues", "A/B sombra", "postmortem obligatorio"]

```

### productos/ASTA-SIGMA/policies/politica_temperatura_llm.yaml

```yaml
id: POL-TEMP-LLM
version: 1.0
status: active
date: 'YYYY-MM-DD'

terms:
  - name: "Límites de Temperatura para Agentes LLM"
    policy:
      name: "Política de Control de Creatividad de LLM"
      description: "Establece un control de seguridad sobre la 'creatividad' (parámetro de temperatura) de los agentes de IA para mitigar el riesgo de alucinaciones en tareas sensibles."
      rules:
        - id: "temp-rule-001"
          name: "Límites de Temperatura por Tipo de Tarea"
          description: "Define la temperatura máxima permitida según la naturaleza de la tarea."
          task_types:
            operativa_normativa: # Tareas basadas en reglas y hechos (ej. consulta de leyes)
              temperatura_max: 0.2
              top_p_max: 0.7
            analisis_tactico: # Tareas que requieren resumen o sintesis (ej. analisis de reportes)
              temperatura_max: 0.5
              top_p_max: 0.9
            generacion_creativa: # Tareas de ideacion o borrador (ej. redaccion de discursos)
              temperatura_max: 0.8
              top_p_max: 1.0
        - id: "temp-rule-002"
          name: "HITL Obligatorio para Alta Creatividad"
          description: "Las tareas que permiten alta creatividad requieren supervisión humana obligatoria."
          condition: "task.temperatura > 0.5"
          evidenceRequired:
            - "El `Contrato de Agente` debe especificar una regla HITL para este escenario."

```

### productos/ASTA-SIGMA/portfolio/plantilla_ficha_portafolio.yaml

```yaml
# Ficha de Portafolio de Transformación
id: PORT-GORE-NUBLE-TD-2025
version: 1.0
status: active
date: 'YYYY-MM-DD'
owner: "Oficina de Transformación Digital"

portfolio:
  name: "Portafolio de Transformación Digital GORE Ñuble"
  vision: "Transformar al GORE Ñuble en una organización data-driven, ágil y centrada en el ciudadano, potenciada por capacidades digitales y de inteligencia artificial."

  # Pilares que guían la inversión y el esfuerzo
  strategicPillars:
    - id: "PILLAR-01"
      name: "Eficiencia Operacional Interna"
      description: "Optimizar y automatizar los procesos internos para reducir costos, tiempos de ciclo y errores."
    - id: "PILLAR-02"
      name: "Servicios al Ciudadano de Excelencia"
      description: "Crear canales digitales y servicios proactivos que mejoren la experiencia del ciudadano."
    - id: "PILLAR-03"
      name: "Liderazgo Territorial Basado en Datos"
      description: "Utilizar datos y analítica avanzada para mejorar la toma de decisiones en la planificación y gestión del territorio."

  # KPIs que miden el éxito del portafolio completo
  keyPerformanceIndicators:
    - id: "KPI-ORG-01"
      name: "Índice de Madurez Digital Organizacional"
      target: "Aumentar de 2.5 a 4.0 en 24 meses."
      pillar: "PILLAR-01"
    - id: "KPI-ORG-02"
      name: "Índice de Satisfacción Ciudadana (CSAT) con Canales Digitales"
      target: ">85%"
      pillar: "PILLAR-02"
    - id: "KPI-ORG-03"
      name: "% de Decisiones de Inversión Territorial Basadas en Evidencia de la IDE"
      target: ">70%"
      pillar: "PILLAR-03"

  # Inventario de los componentes del portafolio
  inventory:
    systemsOfWork:
      - id: "ST-NEXO-GORE"
        strategicPillar: "PILLAR-01"
      - id: "ST-MI-NUBLE"
        strategicPillar: "PILLAR-02"
      - id: "ST-IDE-NUBLE"
        strategicPillar: "PILLAR-03"
      - id: "ST-DATOS-ANALITICOS"
        strategicPillar: "PILLAR-03"
      - id: "ST-CIES-SEGURIDAD"
        strategicPillar: "PILLAR-02"

    initiatives:
      - id: "INIT-NUBLE-001"
        name: "Piloto Escudo CGR"
        strategicPillar: "PILLAR-01"
      - id: "INIT-NUBLE-002"
        name: "Piloto Agilizador de Convenios"
        strategicPillar: "PILLAR-01"

```

### productos/ASTA-SIGMA/presentacion/README.md

```markdown
# Módulo de Presentación ASTA-SIGMA

## 1. Propósito

Este módulo proporciona plantillas estandarizadas para traducir la "arquitectura como código" del marco ASTA-SIGMA en documentos de comunicación estratégica dirigidos a directivos, comités de gobernanza y otros stakeholders no técnicos.

El objetivo es asegurar que la información crítica sobre la arquitectura, el riesgo, el valor y la planificación se presente de manera:

- **Consistente:** Todos los informes y planes siguen la misma estructura.
- **Clara:** La información se presenta en un lenguaje orientado a la toma de decisiones.
- **Basada en Evidencia:** Cada sección del informe se deriva directamente de los artefactos versionados en el portafolio de arquitectura (Fichas de ST, Fichas de Iniciativa, etc.).

## 2. Plantillas Disponibles

### 2.1. Plan Maestro de Transformación Digital

- **Archivo:** `templates/plantilla_plan_maestro_transformacion.md`
- **Propósito:** Definir y comunicar el plan estratégico completo para la transformación digital de toda la organización.
- **Cuándo Usarlo:**
  - Al inicio de un programa de transformación a gran escala.
  - Como el documento rector para ser aprobado por la alta dirección.
  - Para alinear a todos los equipos y stakeholders bajo una única visión y hoja de ruta.

### 2.2. Informe de Arquitectura de Sistema de Trabajo

- **Archivo:** `templates/plantilla_informe_arquitectura.md`
- **Propósito:** Presentar una evaluación exhaustiva del estado actual de un Sistema de Trabajo (ST) existente.
- **Cuándo Usarlo:**
  - Para revisiones de salud trimestrales de sistemas críticos.
  - Antes de tomar una decisión de inversión importante sobre un sistema (ej. modernizar, expandir, retirar).
  - Como parte de una auditoría interna o externa.

### 2.3. Plan de Iniciativa Estratégica

- **Archivo:** `templates/plantilla_plan_iniciativa.md`
- **Propósito:** Articular el caso de negocio, alcance, plan y solicitud de recursos para una nueva iniciativa (proyecto, piloto).
- **Cuándo Usarlo:**
  - Para proponer una nueva iniciativa al comité de gobernanza.
  - Como el documento de "charter" o acta de constitución de un nuevo proyecto.
  - Para comunicar el plan de una iniciativa aprobada a todos los stakeholders.

## 3. Cómo Usar las Plantillas

1. **Copie la Plantilla:** No edite la plantilla directamente. Copie el archivo `.md` a una nueva ubicación para su informe o plan específico.
2. **Extraiga la Información de la Fuente de Verdad:** Rellene cada sección del documento utilizando la información contenida en los artefactos ASTA-SIGMA correspondientes (Fichas de ST, Fichas de Iniciativa, Contratos, etc.). Los comentarios en las plantillas indican qué campo de artefacto corresponde a cada sección.
3. **Añada el Análisis:** Las plantillas proporcionan la estructura. El valor se genera al añadir el análisis y las recomendaciones basadas en los datos extraídos. Por ejemplo, en el `Informe de Arquitectura`, no solo presente el SLO, sino también analice por qué está en rojo y qué impacto tiene en el negocio.
4. **Mantenga la Trazabilidad:** Siempre incluya los IDs de los artefactos (`ST-XXX`, `INIT-YYY`) en su documento para mantener un vínculo claro con la fuente de verdad de la arquitectura.

```

### productos/ASTA-SIGMA/presentacion/templates/Informe_Arquitectura_TDE-CL.md

```markdown
# Informe de Arquitectura — TDE‑Chile (Plantilla)

## 1. Resumen ejecutivo
Objetivo del servicio, valor público, riesgos y dependencias.

## 2. Cumplimiento TDE y plataformas SGD
Matriz LTDE/NT ↔ controles ↔ evidencias. Integraciones: ClaveÚnica, PISEE, DocDigital, Notificador.

## 3. Datos y privacidad (Ley 21.719)
Base legal, EIPD (si aplica), medidas de seguridad y plan de brechas.

## 4. IA responsable (proyecto de Ley de IA)
Nivel de riesgo, transparencia, monitoreo pos‑despliegue y kill switch.

## 5. SLO/SLI, continuidad y observabilidad
SLO objetivo, presupuesto de error, OTel, DR/BCP y resultados de GameDays.

## 6. Decisiones (ADRs) y contrato(s) computables
Listado y vínculos a ADRs/contratos relevantes.

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_informe_arquitectura.md

```markdown
# Informe de Arquitectura: [Nombre del Sistema de Trabajo]

- **ID del Sistema:** `ST-XXX`
- **Fecha del Informe:** YYYY-MM-DD
- **Versión del Informe:** 1.0

---

## 1. Resumen Ejecutivo

*Esta sección está diseñada para ser leída en menos de 2 minutos. Debe ser autosuficiente.*

- **Propósito del Sistema:** [Extraer de `propósitoYValorPublico` de la Ficha de ST. Ej: Orquestar, automatizar y hacer trazables los flujos de trabajo críticos del ciclo de IPR...]
- **Estado General:** [Evaluar en una escala: `Saludable` / `Necesita Mejoras` / `En Riesgo`].
- **Hallazgos Clave:**
  - **Fortaleza Principal:** [Ej: El sistema cumple consistentemente su SLO de disponibilidad del 99.9%, asegurando la continuidad operacional.]
  - **Debilidad Principal:** [Ej: El sistema presenta una alta deuda técnica en su módulo de reportes, lo que genera un alto costo de mantención y lentitud en la generación de informes críticos.]
  - **Riesgo Principal:** [Ej: El sistema depende de una API externa sin un contrato de suministro formal, lo que representa un riesgo de disponibilidad no gestionado.]
- **Recomendación Principal:** [Ej: Se recomienda aprobar una iniciativa de modernización para el módulo de reportes con una inversión estimada de X para reducir el costo operativo en Y% en los próximos 6 meses.]

---

## 2. Contexto Estratégico y Valor de Negocio

*Esta sección conecta el sistema con los objetivos de la organización.*

- **Alineación Estratégica:**
  - **Objetivo Estratégico Principal:** [Extraer de `alineacionEstrategica` de la Ficha de ST.]
  - **Contribución a KPIs de Negocio:**
    - `KPI-XXX`: [Describir cómo el sistema impacta este KPI. Extraer de la Ficha de ST.]
    - `KPI-YYY`: [...]

- **Capacidades de Negocio que Realiza:**
  - `CE-XXX`: [Nombre de la Capacidad. Extraer de la Ficha de ST.]
  - `CE-YYY`: [...]

- **Capacidades Ofrecidas a la Organización:**
  - `CAP-XXX`: [Nombre de la Capacidad Ofrecida. Extraer de la Ficha de ST. Describir qué otros sistemas dependen de esta capacidad.]

---

## 3. Análisis de la Arquitectura y Operación

*Esta sección es el análisis técnico y sociotécnico detallado.*

### 3.1. Salud Operativa (Vista Δ)

| Métrica de Servicio (SLO) | Objetivo | Rendimiento Actual | Estado |
|---|---|---|---|
| Disponibilidad de `SV-XXX` | 99.5% | 99.92% | ✅ Verde |
| Latencia p95 de `SV-XXX` | < 500ms | 780ms | ❌ Rojo |
| Tasa de Error de `SV-YYY` | < 0.1% | 0.05% | ✅ Verde |

- **Análisis de SLOs:** [Comentar sobre el rendimiento. Ej: El sistema es altamente disponible, pero la latencia del servicio de consulta excede el objetivo, impactando negativamente la experiencia del usuario y el KPI de adopción.]
- **Gestión de Incidentes:** [Resumir incidentes significativos del último período. ¿Se respetaron los presupuestos de error?]

### 3.2. Estructura y Dependencias (Vista Σ)

- **Componentes Tecnológicos Clave:**
  - **Aplicaciones:** `AP-XXX`, `AP-YYY`
  - **Plataformas:** `PL-ZZZ`
- **Dependencias Internas:**
  - Consume `CAP-ABC` de `ST-OTRO-SISTEMA`: [Analizar la salud y criticidad de esta dependencia.]
- **Dependencias Externas:**
  - `DEP-001` (Proveedor X): [Analizar el riesgo de esta dependencia. ¿Existe un Contrato de Suministro? ¿Cuál es el plan de contingencia?]

### 3.3. Gobernanza, Riesgo y Cumplimiento

- **Mandato Regulatorio:** [Extraer de la Ficha de ST. Ej: Res. N° 30 CGR.]
- **Riesgos Principales Identificados:**
  - `RIESGO-001`: [Descripción del riesgo, impacto y probabilidad. ¿Existen controles para mitigarlo?]
- **Estado de Cumplimiento de Políticas:**
  - `POL-SEG-01`: [Cumple / No Cumple. Comentar sobre la evidencia.]

### 3.4. Análisis Sociotécnico

- **Actores Humanos y Digitales:** [Resumir los roles que interactúan con el sistema.]
- **Impacto en el Trabajo Humano:**
  - **Toma de Decisiones:** [¿El sistema asiste, aumenta o automatiza la toma de decisiones? ¿Es efectivo?]
  - **Comunicación y Coordinación:** [¿Cómo ha afectado el sistema la forma en que los equipos colaboran?]

---

## 4. Hoja de Ruta y Recomendaciones

*Esta sección define los próximos pasos accionables.*

- **Recomendación 1: [Título de la Recomendación. Ej: Modernizar Módulo de Reportes]**
  - **Justificación:** [Basado en los hallazgos. Ej: La alta deuda técnica genera un sobrecosto operativo de X y retrasa la entrega de informes críticos en un promedio de Y días.]
  - **Acciones Propuestas:**
    - [ ] Crear `Ficha de Iniciativa` para el proyecto de modernización.
    - [ ] Asignar equipo y presupuesto en el próximo ciclo de planificación.
  - **Impacto Esperado:** [Ej: Reducción del costo de mantención en un 30% y del tiempo de generación de informes a menos de 1 hora.]

- **Recomendación 2: [Título de la Recomendación. Ej: Formalizar Contrato con Proveedor Externo]**
  - **Justificación:** [El riesgo de disponibilidad de la dependencia `DEP-001` no está gestionado y podría causar una interrupción crítica del servicio.]
  - **Acciones Propuestas:**
    - [ ] Negociar y firmar un `Contrato de Suministro` con el proveedor que incluya SLAs claros.
    - [ ] Implementar el plan de contingencia (circuit breaker) definido en el contrato.
  - **Impacto Esperado:** [Mitigación del riesgo de disponibilidad y predictibilidad del servicio.]

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_informe_portafolio.md

```markdown
# Informe de Avance de la Transformación Digital

- **ID del Portafolio:** `PORT-GORE-NUBLE-TD-2025`
- **Período del Informe:** [Ej: Q3 2025]
- **Fecha del Informe:** YYYY-MM-DD

---

## 1. Resumen Ejecutivo: Estado de la Transformación

*Esta sección está diseñada para ser leída en menos de 3 minutos. Debe ser autosuficiente.*

- **Visión de la Transformación:** [Extraer de `portfolio.vision` de la Ficha de Portafolio.]
- **Estado General del Portafolio:** [Evaluar en una escala: `En Rumbo` / `Con Desviaciones Menores` / `En Riesgo`].
- **Avance Hacia los KPIs Organizacionales:**

| KPI Organizacional | Objetivo | Avance Actual | Estado |
|---|---|---|---|
| `KPI-ORG-01`: Madurez Digital | 4.0 en 24m | 2.8 | 🟡 En progreso |
| `KPI-ORG-02`: CSAT Digital | >85% | 75% | 🟡 En progreso |
| `KPI-ORG-03`: Decisiones Data-Driven | >70% | 55% | 🟡 En progreso |

- **Logro Principal del Período:** [Ej: El lanzamiento del piloto 'Escudo CGR' (`INIT-NUBLE-001`) validó la viabilidad de usar IA para reducir observaciones de CGR, un hito clave para el pilar de 'Eficiencia Operacional'.]
- **Principal Desafío del Período:** [Ej: Se ha detectado un retraso en la modernización del sistema `ST-XXX`, lo que pone en riesgo el cumplimiento del `KPI-YYY` para el próximo trimestre.]
- **Decisión Estratégica Requerida:** [Ej: Se solicita al comité de gobernanza priorizar la asignación de recursos para la modernización de `ST-XXX` o aceptar un ajuste en la meta del `KPI-YYY` para fin de año.]

---

## 2. Desempeño por Pilar Estratégico

*Esta sección evalúa el progreso en cada una de las grandes apuestas de la transformación.*

### Pilar 1: Eficiencia Operacional Interna

- **Estado:** ✅ En Rumbo
- **Análisis:** [Los Sistemas de Trabajo (`ST-NEXO-GORE`) e Iniciativas (`INIT-NUBLE-001`) asociados a este pilar están mostrando un buen progreso. Los pilotos de IA están validando las hipótesis de valor y se espera que su industrialización acelere el `KPI-ORG-01`.]

### Pilar 2: Servicios al Ciudadano de Excelencia

- **Estado:** 🟡 Con Desviaciones Menores
- **Análisis:** [El canal `ST-MI-NUBLE` ha mejorado su disponibilidad, pero la baja adopción de nuevos servicios está frenando el avance del `KPI-ORG-02`. Se necesita una iniciativa de gestión del cambio y marketing digital.]

### Pilar 3: Liderazgo Territorial Basado en Datos

- **Estado:** 🟡 Con Desviaciones Menores
- **Análisis:** [La plataforma `ST-IDE-NUBLE` está operativa, pero la calidad de los datos de origen sigue siendo un desafío. El `KPI-ORG-03` depende de mejorar la gobernanza de datos en toda la organización.]

---

## 3. Salud del Portafolio de Sistemas de Trabajo

*Esta sección consolida la salud de los activos digitales de la organización.*

| Sistema de Trabajo (ID) | Pilar Estratégico | Salud Operativa (SLOs) | Salud del Equipo | Deuda Técnica |
|---|---|---|---|---|
| `ST-NEXO-GORE` | Eficiencia Operacional | ✅ Verde | ✅ Verde | 🟡 Media |
| `ST-MI-NUBLE` | Servicios al Ciudadano | ✅ Verde | 🟡 Naranja | 🔴 Alta |
| `ST-IDE-NUBLE` | Liderazgo Territorial | 🟡 Naranja | ✅ Verde | 🟡 Media |

- **Análisis Consolidado:** [Ej: La mayoría de nuestros sistemas críticos están operativamente estables. Sin embargo, la alta deuda técnica en `ST-MI-NUBLE` representa un riesgo significativo y está consumiendo el 50% de la capacidad del equipo en mantenimiento no planificado, impidiendo la evolución del producto.]

---

## 4. Estado del Portafolio de Iniciativas

*Esta sección resume el estado de los proyectos de cambio.*

| Iniciativa (ID) | Pilar Estratégico | Estado | % Avance | Riesgos Clave |
|---|---|---|---|---|
| `INIT-NUBLE-001` | Eficiencia Operacional | ✅ En Rumbo | 100% (Completada) | N/A |
| `INIT-NUBLE-002` | Eficiencia Operacional | ✅ En Rumbo | 80% | Ninguno |
| `INIT-XXX-003` | Servicios al Ciudadano | 🔴 Retrasada | 30% | Dependencia externa bloqueante |

- **Análisis Consolidado:** [Ej: Las iniciativas del pilar de Eficiencia Operacional avanzan según lo planificado. La iniciativa `INIT-XXX-003` está bloqueada y requiere una intervención de la alta dirección para resolver la dependencia con el proveedor Z.]

---

## 5. Foco Estratégico para el Próximo Período

*Esta sección define las prioridades para el siguiente trimestre.*

- **Objetivo 1: [Ej: Mitigar la Deuda Técnica de `ST-MI-NUBLE`]**
  - **Justificación:** [Liberar la capacidad del equipo para enfocarse en la evolución del producto y mejorar el `KPI-ORG-02`.]
  - **Acción Clave:** [Lanzar una iniciativa de refactorización técnica con `Definition of Done` clara.]

- **Objetivo 2: [Ej: Industrializar el Piloto 'Escudo CGR']**
  - **Justificación:** [Capitalizar el éxito del piloto para empezar a capturar el valor a escala y mover el `KPI-ORG-01`.]
  - **Acción Clave:** [Crear la `Ficha de Iniciativa` para la fase 2 y asignarla al equipo correspondiente.]

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_plan_iniciativa.md

```markdown
# Plan de Iniciativa Estratégica: [Nombre de la Iniciativa]

- **ID de la Iniciativa:** `INIT-XXX-001`
- **Fecha del Plan:** YYYY-MM-DD
- **Versión del Plan:** 1.0

---

## 1. Resumen Ejecutivo y Solicitud

*Esta sección está diseñada para ser leída en menos de 2 minutos. Debe ser autosuficiente.*

- **Problema / Oportunidad:** [Describir brevemente la fricción de negocio o la oportunidad estratégica que esta iniciativa aborda.]
- **Solución Propuesta:** [Describir la iniciativa en una frase. Ej: Implementar un piloto de un asistente de IA (Pre-Auditor Inteligente) para reducir las observaciones en las rendiciones de cuentas.]
- **Impacto Estratégico:** [Resumir la contribución a los KPIs. Ej: Se proyecta una reducción del 50% en la tasa de observaciones (KPI-IPR-02) y un ahorro de 200 horas/hombre mensuales en revisiones manuales.]
- **Sistemas de Trabajo Impactados:** `ST-XXX`, `ST-YYY`
- **Solicitud:** [Declarar claramente lo que se solicita. Ej: Se solicita la aprobación para activar esta iniciativa, asignando al equipo 'Plataformas Internas' para su ejecución en el próximo trimestre (Q4 2025).]

---

## 2. Caso de Negocio y Alineación Estratégica

*Esta sección justifica la inversión en la iniciativa.*

- **Alineación con el Plan Estratégico:**
  - **Horizonte del Plan:** [Extraer de `strategicAlignment.planHorizon` de la Ficha de Iniciativa.]
  - **Contribución a KPIs de Negocio:**
    - `KPI-XXX`: [Describir en detalle cómo la iniciativa moverá este indicador. Cuantificar el impacto esperado.]

- **Justificación y Análisis Costo-Beneficio (Simplificado):**
  - **Costo Estimado:** [Ej: Esfuerzo de 1 equipo durante 1 trimestre.]
  - **Beneficio Esperado (Cuantitativo):** [Ej: Ahorro de costos, reducción de tiempo de ciclo, disminución de tasa de error.]
  - **Beneficio Esperado (Cualitativo):** [Ej: Mejora de la experiencia del funcionario, aumento de la capacidad de fiscalización, mitigación de riesgos.]

---

## 3. Alcance y Plan de Ejecución

*Esta sección detalla qué se hará y qué no se hará.*

### 3.1. Alcance de la Iniciativa

- **Descripción General:** [Extraer de `scope.description` de la Ficha de Iniciativa.]
- **Entregables Clave (In-Scope):**
  - [Extraer de `scope.inScope`.]
  - [...]
- **Fuera de Alcance (Out-of-Scope):**
  - [Extraer de `scope.outOfScope`.]
  - [...]

### 3.2. Criterios de Éxito (Definition of Done)

*¿Cómo sabremos que la iniciativa ha sido completada exitosamente?*

- [Extraer de `definitionOfDone` de la Ficha de Iniciativa. Deben ser criterios medibles y verificables.]
- [...]

### 3.3. Plan de Alto Nivel e Hitos

| Hito | Entregable Asociado | Fecha Estimada |
|---|---|---|
| **Hito 1:** Diseño y Prototipado | `Contrato de Agente` v1.0 definido | Semana 2 |
| **Hito 2:** Desarrollo del MVP | Agente `ag-XXX` funcional en entorno de pruebas | Semana 8 |
| **Hito 3:** Piloto Controlado | Pruebas con usuarios de la DAF completadas | Semana 11 |
| **Hito 4:** Cierre y Reporte | Informe de resultados del piloto generado | Semana 12 |

---

## 4. Impacto en la Arquitectura y Gobernanza

*Esta sección describe cómo la iniciativa cambia la organización.*

- **Sistemas de Trabajo Impactados:**
  - `ST-XXX`: [Extraer de `impactsSystemOfWork`. Describir el cambio de estado que producirá la iniciativa en este sistema.]
  - `ST-YYY`: [...]

- **Riesgos y Mitigaciones:**
  - **Riesgo 1:** [Ej: Baja adopción por parte de los usuarios.]
    - **Mitigación:** [Ej: Involucrar a los usuarios finales desde las primeras etapas de diseño y realizar capacitaciones.]
  - **Riesgo 2:** [Ej: El modelo de IA no alcanza la precisión requerida.]
    - **Mitigación:** [Ej: Definir un umbral de precisión claro en la `Definition of Done` y usar un set de datos de validación robusto.]

- **Equipo Responsable:**
  - **Equipo de Flujo de Valor:** [Extraer de `owner.team` de la Ficha de Iniciativa.]

```

### productos/ASTA-SIGMA/presentacion/templates/plantilla_plan_maestro_transformacion.md

```markdown
# Plan Maestro de Transformación Digital: [Nombre de la Organización]

- **Período de Vigencia:** [Ej: 2025-2028]
- **Fecha de Aprobación:** YYYY-MM-DD
- **Versión:** 1.0

---

## 1. Visión y Dirección Estratégica

*Esta sección establece el 'porqué' de la transformación.*

- **Declaración de Visión:** [Extraer de `portfolio.vision` de la Ficha de Portafolio. Ej: Transformar al GORE Ñuble en una organización data-driven, ágil y centrada en el ciudadano...]
- **Contexto y Desafío Estratégico:** [Describir el contexto actual de la organización y por qué la transformación es una necesidad imperativa. Ej: La creciente demanda ciudadana por servicios digitales eficientes y la necesidad de tomar decisiones de inversión pública basadas en evidencia requieren una modernización profunda de nuestras capacidades...]
- **Principios Rectores de la Transformación:**
  - [Principio 1: Ej: Valor Público sobre la Tecnología.]
  - [Principio 2: Ej: Evolución Iterativa sobre Grandes Proyectos.]
  - [Principio 3: Ej: Gobernanza como Código para la Transparencia y Agilidad.]

---

## 2. Pilares Estratégicos y Resultados Clave

*Esta sección desglosa la visión en áreas de foco medibles, basado en la Ficha de Portafolio.*

| Pilar Estratégico (ID) | Descripción | KPI Organizacional Asociado (ID) |
|---|---|---|
| `PILLAR-01`: Eficiencia Operacional | [Descripción del pilar] | `KPI-ORG-01`: Madurez Digital |
| `PILLAR-02`: Servicios al Ciudadano | [Descripción del pilar] | `KPI-ORG-02`: CSAT Digital |
| `PILLAR-03`: Liderazgo Territorial | [Descripción del pilar] | `KPI-ORG-03`: Decisiones Data-Driven |

---

## 3. Hoja de Ruta de la Transformación por Horizontes

*Esta sección presenta el plan de ejecución secuenciado en horizontes de tiempo, mostrando cómo se construirán las capacidades de forma incremental.*

### Horizonte 1: Fundación y Victorias Tempranas (Próximos 6 Meses)

- **Foco:** [Ej: Establecer las plataformas base, entregar valor visible rápidamente y demostrar la viabilidad del nuevo modelo operativo.]
- **Iniciativas Clave:**
  - `INIT-NUBLE-001`: Piloto Escudo CGR
  - `INIT-NUBLE-002`: Piloto Agilizador de Convenios
  - `INIT-XXX-003`: Implementación de la Plataforma de Datos (`ST-DATOS-ANALITICOS`)
- **Capacidades a Desarrollar:** [Ej: Gobernanza de IA, Ingesta de Datos, Automatización de Procesos Simples.]

### Horizonte 2: Escalado y Expansión (6 a 18 Meses)

- **Foco:** [Ej: Expandir el uso de las plataformas base a más procesos, industrializar los pilotos exitosos y lanzar los primeros servicios digitales proactivos al ciudadano.]
- **Iniciativas Clave (Ejemplos):**
  - `INIT-XXX-004`: Industrialización del Asistente de Rendiciones
  - `INIT-XXX-005`: Lanzamiento del portal `Mi Ñuble` v1.0 (`ST-MI-NUBLE`)
- **Capacidades a Desarrollar:** [Ej: Desarrollo de Productos Digitales, Operaciones de IA (MLOps), Autoservicio de Datos.]

### Horizonte 3: Optimización y Liderazgo (18 a 36 Meses)

- **Foco:** [Ej: Utilizar la analítica avanzada para optimizar los servicios, personalizar la experiencia ciudadana y consolidar el rol de liderazgo territorial del GORE basado en datos.]
- **Iniciativas Clave (Ejemplos):**
  - `INIT-XXX-006`: Implementación del Observatorio 360 (Analítica Predictiva)
  - `INIT-XXX-007`: Personalización Proactiva de Servicios en `Mi Ñuble`
- **Capacidades a Desarrollar:** [Ej: Ciencia de Datos Aplicada, Diseño de Experiencia Ciudadana (CX), Gobernanza de Ecosistemas Digitales.]

---

## 4. Modelo de Inversión y Gobernanza

- **Modelo de Financiamiento:** [Describir cómo se financiará la transformación. Ej: Se propone un modelo de financiamiento por 'tranches' trimestrales, condicionado al cumplimiento de los hitos y a los resultados de las Revisiones de Valor y Capacidad (RVC).]
- **Estimación de Inversión por Pilar:**
  - **Pilar 1 (Eficiencia):** XX% del presupuesto total.
  - **Pilar 2 (Ciudadanía):** YY% del presupuesto total.
  - **Pilar 3 (Territorio):** ZZ% del presupuesto total.
- **Modelo de Gobernanza:**
  - **Comité de Transformación Digital:** [Definir su composición y mandato.]
  - **Cadencia de Revisión:** [Ej: El avance del plan se revisará trimestralmente en el comité, utilizando el `Informe de Avance de la Transformación Digital` como insumo principal.]

---

## 5. Riesgos Estratégicos

| Riesgo | Impacto Potencial | Estrategia de Mitigación |
|---|---|---|
| **Resistencia al Cambio Organizacional** | Alto | Implementar un plan de gestión del cambio robusto, con comunicación constante, capacitación y co-diseño con los funcionarios. |
| **Baja Calidad de los Datos de Origen** | Alto | Priorizar iniciativas de gobernanza y calidad de datos en el Horizonte 1. Nombrar 'dueños de datos' en cada división. |
| **Dependencia de Proveedores Clave** | Medio | Diversificar proveedores cuando sea posible y formalizar todas las dependencias críticas a través de `Contratos de Suministro` con SLAs claros. |

```

### productos/ASTA-SIGMA/tde-chile/ci/validate_contracts.sh

```bash
#!/usr/bin/env bash
set -euo pipefail

# Requires: python3, pip install pyyaml jsonschema
echo "[ASTA‑SIGMA | TDE‑CL] Validando contratos..."

fail=0
files=$(git ls-files | grep -E 'contrato_(datos|agente_ia|proceso)_tde\.ya?ml' || true)

if [ -z "$files" ]; then
  echo "[WARN] No se encontraron contratos *_tde.yaml en el repo."
  exit 0
fi

for f in $files; do
  python3 - "$f" <<'PY' || fail=1
import sys, json, yaml, os
from jsonschema import Draft202012Validator

fname = sys.argv[1]
data = yaml.safe_load(open(fname, encoding="utf-8"))

def load_schema(kind):
    base = "tde-chile/schemas"
    m = {
        "data_contract": "schema_contrato_datos_tde.json",
        "agent_contract": "schema_contrato_agente_ia_tde.json",
        "process_contract": "schema_contrato_proceso_tde.json",
    }
    return json.load(open(os.path.join(base, m[kind]), encoding="utf-8"))

kind = data.get("kind")
if kind not in {"data_contract","agent_contract","process_contract"}:
    print(f"[ERROR] kind inválido o faltante en {fname}: {kind}")
    sys.exit(2)

schema = load_schema(kind)
Draft202012Validator(schema).validate(data)

# Extra: campos críticos
def ensure(path):
    node = data
    for k in path:
        if not isinstance(node, dict) or k not in node:
            print(f"[ERROR] Falta campo obligatorio {'.'.join(path)} en {fname}")
            sys.exit(3)
        node = node[k]

critical = {
    "data_contract": [
        ("datos_personales","base_legal"),
        ("datos_personales","eipd_id"),
        ("brechas","procedimiento"),
    ],
    "agent_contract": [
        ("ia_riesgo","nivel"),
        ("dp_21719","eipd_id"),
        ("tde","autenticacion"),
    ],
    "process_contract": [
        ("tde","expediente_electronico"),
        ("tde","interoperabilidad"),
        ("tde","notificacion"),
    ],
}.get(kind, [])

for p in critical:
    ensure(p)

print(f"[OK] {fname} válido ✅")
PY
done

exit $fail

```

### productos/ASTA-SIGMA/tde-chile/guias_operativas/GO-006_Expediente_Electronico.md

```markdown
# GO‑006 — Expediente Electrónico

**Objetivo:** Asegurar que todo procedimiento admin. se exprese en expediente electrónico con equivalencia funcional, fidelidad y preservación.  
**Contenidos mínimos:** ingreso, foliación, orden de actuaciones, reconstrucción por indisponibilidad, preservación y respaldo.  
**Evidencia:** hash por pieza, bitácora inmutable y prueba de integridad.

```

### productos/ASTA-SIGMA/tde-chile/guias_operativas/GO-007_Notificacion_Brechas_Datos.md

```markdown
# GO‑007 — Notificación de Brechas de Datos

**Cuándo notificar:** destrucción/pérdida/alteración o acceso/comunicación no autorizados con riesgo razonable.  
**A quién:** APDP sin dilaciones indebidas; titulares si afecta datos sensibles, menores de 14 o datos financiero‑bancario‑comerciales.  
**Qué informar:** naturaleza, categorías/volumen, efectos, medidas adoptadas y plan de mitigación.  
**Registros:** libro de incidentes y lecciones aprendidas.

```

### productos/ASTA-SIGMA/tde-chile/guias_operativas/GO-008_Incidentes_IA.md

```markdown
# GO‑008 — Incidentes Graves de IA

**Definición operativa:** evento que provoca o puede provocar daño significativo a personas por decisiones/recomendaciones de IA.  
**Canal:** reporte a la APDP; coordinar con ANCI si hay componente de ciberseguridad/infra crítica.  
**Acciones:** contención, análisis de causa raíz, kill switch si aplica, remediación y comunicación a afectados.

```

### productos/ASTA-SIGMA/tde-chile/guias_operativas/GO-009_Interoperabilidad_PISEE.md

```markdown
# GO‑009 — Interoperabilidad (PISEE) y “sólo una vez”

**Política:** no solicitar a las personas información que ya obra en poder del Estado.  
**Implementación:** catálogo DCAT de datasets y OpenAPI 3.1 de servicios; pruebas de interoperabilidad; autorización reforzada para datos sensibles; auditoría de consumo.

```

### productos/ASTA-SIGMA/tde-chile/guias_operativas/GO-010_Calidad_Plataformas_e_Indisponibilidad.md

```markdown
# GO‑010 — Calidad de Plataformas e Indisponibilidad

**SLO mínimos por criticidad**, presupuesto de error, tablero público, protocolo de comunicación de incidentes, plan BCP/DRP probado (GameDays), y re‑ingreso inmediato de actuaciones tras contingencia.

```

### productos/ASTA-SIGMA/tde-chile/policies/POL-DATOS-21719.yaml

```yaml
id: POL-DATOS-21719
version: "0.1.0"
status: draft
scope: "Todos los ST y productos/servicios que traten datos personales"
principles: [licitud, finalidad, minimizacion, exactitud, limitacion_conservacion, integridad_confidencialidad, responsabilidad]
privacy_by_design: true     # art. 14 quáter, Ley 21.719
privacy_by_default: true    # art. 14 quáter, Ley 21.719
security_controls:          # art. 14 quinquies, Ley 21.719
  - cifrado
  - rbac_abac
  - resiliencia_y_restauracion
  - verificacion_regular
breach_reporting:           # art. 14 sexies, Ley 21.719
  to_apdp: "sin_dilaciones_indebidas"
  notify_subjects_if: ["datos_sensibles","menores_14","financiero_bancario_comercial"]
dpia_required_if:           # art. 15 ter, Ley 21.719
  - "automatizacion_con_efectos_juridicos_o_similares_significativos"
  - "tratamiento_gran_escala"
  - "monitoreo_sistematico_en_espacios_publicos"
  - "tratamiento_datos_sensibles_sin_consentimiento"
public_bodies_title_IV: true
evidence:
  log_inmutable: true
  auditoria_periodica: true

```

### productos/ASTA-SIGMA/tde-chile/policies/POL-IA-RIESGO-CL.yaml

```yaml
id: POL-IA-RIESGO-CL
version: "0.1.0"
status: draft
risk_levels: ["INACEPTABLE","ALTO","LIMITADO","MINIMO"]
controls_by_risk:
  INACEPTABLE: {prohibido: true}
  ALTO:
    required:
      - sistema_gestion_riesgos
      - documentacion_tecnica_y_de_uso
      - pruebas_pre_despliegue
      - monitoreo_pos_despliegue
      - kill_switch
      - registro_eventos_y_versionado_modelo
  LIMITADO:
    required: ["transparencia_al_usuario"]
  MINIMO:
    required: ["principios_generales_ia"]
incident_reporting:
  authority: "APDP"
  coordination: ["ANCI_si_ciberseguridad"]
  trigger: "incidente_grave"

```

### productos/ASTA-SIGMA/tde-chile/policies/POL-TDE-PLATAFORMAS.yaml

```yaml
id: POL-TDE-PLATAFORMAS
version: "0.1.0"
status: draft
scope: "Integraciones oficiales del Estado"
required_integrations:
  identidad: "ClaveUnica"
  firma: "FirmaGob"
  expediente_documental: "DocDigital"
  interoperabilidad: "PISEE"
  notificaciones: "Notificador/DDU"
service_quality:
  indisponibilidad_consentida: true
  plan_bcp_drp_obligatorio: true
  pruebas_contingencia: "semestral"

```

### productos/ASTA-SIGMA/tde-chile/schemas/schema_contrato_agente_ia_tde.json

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "required": [
    "kind",
    "version",
    "agent_id",
    "interaction_mode",
    "tde",
    "dp_21719",
    "ia_riesgo",
    "telemetry"
  ],
  "properties": {
    "kind": {
      "const": "agent_contract"
    },
    "version": {
      "type": "string"
    },
    "agent_id": {
      "type": "string"
    },
    "hcai_purpose": {
      "type": "string"
    },
    "interaction_mode": {
      "type": "string"
    },
    "legal": {
      "type": "object"
    },
    "tde": {
      "type": "object",
      "required": [
        "autenticacion",
        "interoperabilidad",
        "notificacion"
      ],
      "properties": {
        "autenticacion": {
          "type": "string"
        },
        "interoperabilidad": {
          "type": "string"
        },
        "notificacion": {
          "type": "string"
        }
      }
    },
    "dp_21719": {
      "type": "object",
      "required": [
        "privacidad_por_diseno",
        "medidas_seguridad",
        "eipd_id"
      ],
      "properties": {
        "privacidad_por_diseno": {
          "type": "boolean"
        },
        "medidas_seguridad": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "eipd_id": {
          "type": "string"
        }
      }
    },
    "ia_riesgo": {
      "type": "object",
      "required": [
        "nivel"
      ],
      "properties": {
        "nivel": {
          "type": "string",
          "enum": [
            "INACEPTABLE",
            "ALTO",
            "LIMITADO",
            "MINIMO"
          ]
        },
        "transparencia_usuario": {
          "type": [
            "boolean",
            "string"
          ]
        },
        "monitoreo_pos_despliegue": {
          "type": "boolean"
        },
        "kill_switch": {
          "type": "boolean"
        }
      }
    },
    "telemetry": {
      "type": "object",
      "required": [
        "opentelemetry",
        "min_log_fields"
      ],
      "properties": {
        "opentelemetry": {
          "type": "boolean"
        },
        "min_log_fields": {
          "type": "array",
          "items": {
            "type": "string"
          }
        }
      }
    }
  }
}

```

### productos/ASTA-SIGMA/tde-chile/schemas/schema_contrato_datos_tde.json

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "required": [
    "kind",
    "version",
    "product_name",
    "tde",
    "datos_personales",
    "brechas"
  ],
  "properties": {
    "kind": {
      "const": "data_contract"
    },
    "version": {
      "type": "string"
    },
    "product_name": {
      "type": "string"
    },
    "owner_org": {
      "type": "string"
    },
    "tde": {
      "type": "object",
      "required": [
        "soporte_electronico",
        "interoperable_via",
        "expediente_electronico",
        "notificacion_electronica"
      ],
      "properties": {
        "soporte_electronico": {
          "type": "boolean"
        },
        "interoperable_via": {
          "type": "string"
        },
        "expediente_electronico": {
          "type": "boolean"
        },
        "notificacion_electronica": {
          "type": "boolean"
        }
      }
    },
    "datos_personales": {
      "type": "object",
      "required": [
        "base_legal",
        "privacidad_por_diseno",
        "eipd_id",
        "medidas_seguridad"
      ],
      "properties": {
        "base_legal": {
          "type": "string"
        },
        "privacidad_por_diseno": {
          "type": "boolean"
        },
        "eipd_id": {
          "type": "string"
        },
        "medidas_seguridad": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "retencion_meses": {
          "type": "integer"
        },
        "dpo_contacto": {
          "type": "string"
        }
      }
    },
    "brechas": {
      "type": "object",
      "required": [
        "procedimiento",
        "ventana_notif_apdp"
      ],
      "properties": {
        "procedimiento": {
          "type": "string"
        },
        "ventana_notif_apdp": {
          "type": "string"
        }
      }
    },
    "evidencia": {
      "type": "object"
    }
  }
}

```

### productos/ASTA-SIGMA/tde-chile/schemas/schema_contrato_proceso_tde.json

```json
{
  "$schema": "https://json-schema.org/draft/2020-12/schema",
  "type": "object",
  "required": [
    "kind",
    "version",
    "process_name",
    "tde",
    "sla",
    "auditoria"
  ],
  "properties": {
    "kind": {
      "const": "process_contract"
    },
    "version": {
      "type": "string"
    },
    "process_name": {
      "type": "string"
    },
    "tde": {
      "type": "object",
      "required": [
        "ley_base",
        "reglamento",
        "normas_tecnicas",
        "expediente_electronico",
        "interoperabilidad",
        "notificacion"
      ],
      "properties": {
        "ley_base": {
          "type": "string"
        },
        "reglamento": {
          "type": "string"
        },
        "normas_tecnicas": {
          "type": "array",
          "items": {
            "type": "string"
          }
        },
        "expediente_electronico": {
          "type": "boolean"
        },
        "interoperabilidad": {
          "type": "object"
        },
        "notificacion": {
          "type": "object"
        }
      }
    },
    "sla": {
      "type": "object"
    },
    "hitl": {
      "type": "object"
    },
    "auditoria": {
      "type": "object"
    }
  }
}

```

### productos/ASTA-SIGMA/tde-chile/templates/ST_TDE-CL_template.md

```markdown
# ST_TDE‑CL — Plantilla de Ficha de Sistema de Trabajo

## 1. Identificación

- Código ST: ST-<CODIGO>
- Nombre: <NOMBRE>
- Dueño de servicio (unidad): <UNIDAD>
- EFV patrocinadora: <EFV>

## 2. Mandato y Normativa

- LTDE 21.180: medios electrónicos, expediente, notificación, interoperabilidad (NT asociadas)
- Ley 21.658 (SGD): plataformas compartidas
- Ley 21.719 (anticipada): privacidad por diseño/defecto, EIPD, brechas
- Proyecto Ley IA (anticipada): riesgo, transparencia, monitoreo, kill switch

## 3. Plataformas e Integraciones

- Identidad: ClaveÚnica
- Firma: FirmaGob
- Expediente/Documental: DocDigital
- Interoperabilidad: PISEE
- Notificaciones: Notificador/DDU

## 4. UX/Accesibilidad

- WCAG 2.2 AA, Lenguaje Claro, métricas de experiencia (MESU)

## 5. Riesgo y Controles

- Riesgo ST: R1/R2/R3
- Seguridad: Zero‑Trust, SIEM, microseg.
- Datos personales: base legal, EIPD (si aplica), medidas de seguridad
- IA: nivel de riesgo y controles

## 6. SLO/SLI y Evidencia (Δ)

- SLO: disponibilidad %, latencia p95, tasa éxito
- Evidencia: OTel (trazas/métricas/logs), hash expediente, bitácora inmutable

```

### productos/ASTA-SIGMA/tde-chile/templates/contrato_agente_ia_tde.yaml

```yaml
kind: agent_contract
version: "1.0.0"
agent_id: "<AG-XXX>"
hcai_purpose: "<ASSIST|AUGMENT|...>"
interaction_mode: "HUMAN_IN_THE_LOOP"
legal:
  proposito_legal: "<mandato legal>"
  tratamiento_datos_personales: "<si/no>"
  base_legal_datos: "<ley/articulo>"
tde:
  autenticacion: "ClaveUnica|OIDC institucional"
  interoperabilidad: "PISEE"
  notificacion: "Notificador/DDU"
dp_21719:
  privacidad_por_diseno: true
  medidas_seguridad: ["cifrado","dlp","verificacion_regular"]
  eipd_id: "<EIPD-XXX|no_aplica>"
  brechas_go: "GO-007_Notificacion_Brechas_Datos"
ia_riesgo:
  nivel: "<INACEPTABLE|ALTO|LIMITADO|MINIMO>"
  transparencia_usuario: "<si/no>"
  monitoreo_pos_despliegue: true
  kill_switch: true
telemetry:
  opentelemetry: true
  min_log_fields: [trace_id, st_id, model_version, prompts_hash, incident_flag]

```

### productos/ASTA-SIGMA/tde-chile/templates/contrato_datos_tde.yaml

```yaml
kind: data_contract
version: "1.0.0"
product_name: "<dataset|expediente>"
owner_org: "<servicio u OAE>"
tde:
  soporte_electronico: true
  interoperable_via: "PISEE"
  expediente_electronico: true
  notificacion_electronica: true
datos_personales:
  base_legal: "<ley/articulo>"
  privacidad_por_diseno: true
  eipd_id: "<EIPD-XXX|no_aplica>"
  medidas_seguridad: ["cifrado","rbac_abac","verificacion_regular"]
  retencion_meses: "<N>"
  dpo_contacto: "<correo institucional>"
brechas:
  procedimiento: "GO-007_Notificacion_Brechas_Datos"
  ventana_notif_apdp: "sin_dilaciones_indebidas"
evidencia:
  registro_auditoria: "inmutable"
  hash_expedientes: true

```

### productos/ASTA-SIGMA/tde-chile/templates/contrato_proceso_tde.yaml

```yaml
kind: process_contract
version: "1.0.0"
process_name: "<nombre_proceso>"
tde:
  ley_base: "Ley 21.180"
  reglamento: "DS 4/2020"
  normas_tecnicas: ["Autenticacion","Documentos_Expedientes","Interoperabilidad","Notificaciones","Seguridad","Calidad_Plataformas"]
  expediente_electronico: true
  interoperabilidad:
    plataforma: "PISEE"
    no_solicitar_reiterado: true
    datos_sensibles_autorizacion_registrada: true
  notificacion:
    mecanismo: "Notificador/DDU"
    registro_eventos: true
sla:
  availability_pct: 99.5
  latency_p95: "PT0.5S"
hitl:
  queues: ["aprobacion.excepciones"]
  reglas:
    - "si_riesgo=R2 o confianza<0.85 -> requiere_RevisionHumana"
auditoria:
  bitacora_actuaciones: "inmutable"
  retencion: "P5Y"

```

### productos/ASTA-SIGMA/tde-chile/templates/contrato_suministro_tde.yaml

```yaml
kind: supply_contract
version: "1.0.0"
nombre_servicio: "<API/Plataforma>"
alcance: "Identidad|Interoperabilidad|Documental|Notificador|Firma"
slas:
  disponibilidad: "99.5%"
  latencia_p95_ms: 800
  rto_horas: 4
  rpo_minutos: 30
continuidad:
  dr_bc_plan: true
  pruebas_contingencia: "semestral"
seguridad:
  siem: true
  cifrado_transito: "TLS1.2+"
  cifrado_reposo: "AES-256"
auditoria:
  derecho_auditoria: true
  informes_periodicos: "mensual"
limitaciones:
  rate_limit_rps: 50
  cuotas_mensuales: 1000000

```

