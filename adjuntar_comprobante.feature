# language: es
@api @bills
Característica: Adjuntar comprobante al gasto
  Como miembro
  Quiero adjuntar un comprobante
  Para respaldar el gasto registrado

  Antecedentes:
    Dado que existe el gasto "BILL-5001" en el hogar "H-1001"

  Escenario: Adjuntar comprobante exitoso
    Cuando adjunto el archivo "recibo_luz.pdf" al gasto "BILL-5001"
    Entonces el sistema responde con "200"
    Y el gasto "BILL-5001" muestra "1 comprobante adjunto"

  Escenario: Rechazo por formato inválido
    Cuando adjunto el archivo "comprobante.exe" al gasto "BILL-5001"
    Entonces el sistema responde con "400"
    Y muestra "Formato de archivo no permitido"
