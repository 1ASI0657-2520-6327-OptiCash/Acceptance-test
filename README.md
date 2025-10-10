# Acceptance-test
Este repositorio contiene los tests de aceptación para OptiCash

# OptiCash BDD (Gherkin)
Conjunto de escenarios BDD para OptiCash, organizado por bounded contexts.

## Estructura
- `features/iam/` (registro, login)
- `features/household/` (hogares, miembros)
- `features/bills/` (gastos y comprobantes)
- `features/contributions/` (aportes y pagos)
- `features/notifications/` (recordatorios)
- `features/reports/` (historial y reportes)

## Convenciones
- Español: Dado / Cuando / Entonces / Y
- @api para pruebas backend, @web para UI, @security para autorizaciones
