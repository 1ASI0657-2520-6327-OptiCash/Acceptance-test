# language: es
@api @reports
Característica: Historial de pagos por miembro
  Como miembro del hogar
  Quiero ver mi historial de pagos
  Para validar mis contribuciones pasadas

  Antecedentes:
    Dado que el miembro "Ana" pertenece al hogar "H-1001"
    Y existen pagos registrados en los últimos 3 meses

  Esquema del escenario: Consulta de historial por rango de fechas
    Cuando consulto mi historial entre "<inicio>" y "<fin>"
    Entonces el sistema devuelve la lista de pagos con totales
    Y el estado de la respuesta es "200"

    Ejemplos:
      | inicio     | fin        |
      | 2025-08-01 | 2025-10-31 |
