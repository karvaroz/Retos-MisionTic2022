# ENTRADAS
A = input('Jugador A, Digita las letras que consideres: ')
B= input('Jugador B, Digita las letras que consideres: ')
adivina = input('Escribe la frase adivinar sin espacios: ')

# CONVERSIÓN DE INPUTS EN MAYUSCULA
jugador_A = A.upper()
jugador_B = B.upper()
adivinanza = adivina.upper()

# CONTADORES Y/O ACUMULADORES
puntos = 0
salida = " "

# EVALUACIÓN DE LAS LETRAS EN LA ADIVINANZA
for i in range(0, len(adivinanza)):
  if adivinanza[i] in jugador_A:
    puntos += 1  
  if adivinanza[i] in jugador_B:
    puntos -= 1
  if adivinanza[i] in jugador_A and  adivinanza[i] in jugador_B:
    puntos = puntos
  if puntos == 0:
    salida += 'E'
  elif puntos > 0:
    salida += 'A'
  elif puntos < 0:
    salida += 'B'


print(salida)