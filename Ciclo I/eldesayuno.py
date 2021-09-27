reservas =int(input('Ingrese el N° de reservas:'))

arepas = reservas

huevos = (reservas * 2) + 4

salchichas = (reservas + huevos) / 5

import math

print(arepas, huevos, math.floor(salchichas))

if salchichas >=0 and salchichas <= 20:
  print("Uno")
elif salchichas >20 and salchichas <= 30:
  print("Dos")
elif salchichas >30 and salchichas <= 50:
  print("Tres")
else:
  print("Cuatro")