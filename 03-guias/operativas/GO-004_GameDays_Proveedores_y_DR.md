---
id: GO-004
version: 1.0.0
status: active
date: 2025-09-16
owner: ASTA-SIGMA Core Team
related:
  - ../marco/GM-002_Evaluacion_Clasificacion_Riesgo_ST.md
  - ../operativas/GO-003_Manual_Ensamblaje_Artefactos.md
---
# GO-004: Guía Operativa para Game Days de Proveedores y Pruebas de DR


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
