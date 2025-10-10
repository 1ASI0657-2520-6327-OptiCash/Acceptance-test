# language: es
@api @household
Característica: Invitación de miembros a un hogar
  Como representante del hogar
  Quiero invitar miembros por email
  Para que se unan y participen en los gastos

  Antecedentes:
    Dado que existe el hogar "Familia Torres" con ID "H-1001"
    Y el usuario actual es representante del hogar

  Esquema del escenario: Invitar miembro por email
    Cuando invito al email "<email>" al hogar "H-1001"
    Entonces el sistema registra la invitación con estado "pendiente"
    Y se envía un correo de invitación

    Ejemplos:
      | email                    |
      | luciana@correo.com       |
      | francisco@correo.com     |
