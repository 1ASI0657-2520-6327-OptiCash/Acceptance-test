# language: es
@api @contributions
Característica: Cálculo proporcional de aportes
  Como sistema
  Quiero distribuir el monto del gasto según ingresos
  Para asegurar una contribución justa

  Antecedentes:
    Dado que el hogar "H-1001" tiene miembros:
      | miembro   | ingreso |
      | Ana       | 2500    |
      | Luis      | 1500    |
    Y existe el gasto "BILL-5001" por monto "400"

  Escenario: Cálculo automático correcto
    Cuando se dispara el cálculo de aportes para "BILL-5001"
    Entonces las contribuciones quedan:
      | miembro | aporte |
      | Ana     | 250    |
      | Luis    | 150    |
    Y el total de aportes suma "400"
