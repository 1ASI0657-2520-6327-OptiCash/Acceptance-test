# language: es
@api @web @iam
Característica: Registro de usuarios en OptiCash
  Como visitante
  Quiero registrarme en la plataforma
  Para acceder a las funcionalidades de administración de gastos

  Antecedentes:
    Dado que el servicio de autenticación de OptiCash está disponible

  Esquema del escenario: Registro exitoso de usuario
    Dado que el usuario se encuentra en la sección de registro
    Cuando rellena todos los datos correctamente:
      | campo         | valor                |
      | nombre        | <nombre>             |
      | apellido      | <apellido>           |
      | email         | <email>              |
      | contraseña    | <password>           |
    Y el sistema verifica que el correo no está registrado
    Entonces el sistema registra sus datos en la base de datos
    Y el usuario recibe un mensaje de "Registro exitoso"

    Ejemplos:
      | nombre | apellido | email                   | password    |
      | Ana    | Torres   | ana.torres@correo.com   | P@ssw0rd!   |
      | Luis   | Gómez    | luis.gomez@correo.com   | Segura123*  |

  Escenario: Registro rechazado por email duplicado
    Dado que el usuario se encuentra en la sección de registro
    Cuando rellena todos los datos correctamente:
      | campo      | valor                 |
      | nombre     | Carla                 |
      | apellido   | Rojas                 |
      | email      | existente@correo.com  |
      | contraseña | Secreta#2025          |
    Entonces el sistema informa "El email ya se encuentra registrado"
    Y no se crea una cuenta nueva
