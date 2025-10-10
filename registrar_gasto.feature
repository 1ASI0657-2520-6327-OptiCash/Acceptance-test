# language: es
@api @bills
Característica: Registro de gastos del hogar
  Como miembro autorizado
  Quiero registrar un gasto
  Para mantener actualizado el estado financiero del hogar

  Antecedentes:
    Dado que existe el hogar "H-1001" activo
    Y el usuario pertenece al hogar "H-1001"

  Esquema del escenario: Registrar gasto válido
    Cuando registro un gasto para el hogar "H-1001":
      | concepto   | <concepto>  |
      | monto      | <monto>     |
      | categoria  | <categoria> |
      | venceEl    | <vencimiento> |
    Entonces el sistema responde con "201"
    Y el gasto queda en estado "pendiente"
    Y se dispara el cálculo proporcional de aportes

    Ejemplos:
      | concepto    | monto | categoria     | vencimiento  |
      | Luz Agosto  | 180   | servicios     | 2025-10-20   |
      | Internet    | 120   | comunicaciones| 2025-10-18   |
