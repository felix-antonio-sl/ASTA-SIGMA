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
