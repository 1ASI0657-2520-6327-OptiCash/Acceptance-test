# language: es
@api @web @iam
Característica: Inicio de sesión seguro (JWT)
  Como usuario registrado
  Quiero iniciar sesión con seguridad
  Para acceder a mi panel en OptiCash

  Antecedentes:
    Dado que existe un usuario con email "user@opticash.com" y contraseña válida

  Escenario: Login exitoso
    Cuando el usuario ingresa sus credenciales:
      | email               | user@opticash.com |
      | contraseña          | Correcta#2025     |
    Entonces el sistema responde con estado "200"
    Y se genera un token JWT válido
    Y el usuario accede a su panel

  Escenario: Login fallido por credenciales inválidas
    Cuando el usuario ingresa sus credenciales:
      | email      | user@opticash.com |
      | contraseña | Incorrecta        |
    Entonces el sistema responde con estado "401"
    Y muestra "Credenciales inválidas"
