# language: es
@api @household
Característica: Creación de hogar
  Como representante del hogar
  Quiero crear un hogar
  Para administrar miembros, gastos y aportes

  Antecedentes:
    Dado que el usuario inició sesión como "representante" con un JWT válido

  Esquema del escenario: Crear hogar exitosamente
    Cuando el usuario envía la solicitud de creación de hogar:
      | nombreHogar | <nombre> |
    Entonces el sistema responde con "201"
    Y el hogar queda registrado con estado "activo"
    Y el usuario es asignado como representante del hogar

    Ejemplos:
      | nombre          |
      | Familia Torres  |
      | Roommates 301   |
