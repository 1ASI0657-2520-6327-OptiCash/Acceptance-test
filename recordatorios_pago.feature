# language: es
@api @notifications
Característica: Recordatorios de pago
  Como usuario
  Quiero recibir recordatorios antes del vencimiento
  Para no retrasarme en mis aportes

  Antecedentes:
    Dado que el gasto "BILL-5001" vence el "2025-10-20"
    Y el hogar "H-1001" tiene recordatorios activos

  Escenario: Programación de recordatorio
    Cuando programo un recordatorio 3 días antes del vencimiento para "BILL-5001"
    Entonces el sistema agenda la notificación para "2025-10-17"
    Y devuelve estado "201"

  Escenario: Envío de recordatorio en fecha programada
    Dado que hoy es "2025-10-17"
    Cuando se ejecuta el job de notificaciones
    Entonces los miembros reciben un recordatorio de pago de "BILL-5001"
