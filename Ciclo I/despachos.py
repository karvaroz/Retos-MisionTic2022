def edificios (reservas):
  result = []
  for i in reservas:
    if i not in result:
      result.append(i)  
  return result

def deboLlevar (cocineros, reservas, consulta):
  result = []
  for i in cocineros:
    if reservas[i] == consulta:
      result.append(i)
  return result

def faltanLosCocineros (cocinerosEnLaCocina, cocineroYa):
  result = []
  for i in cocinerosEnLaCocina:
    if i not in cocineroYa:
      result.append(i)
  return result
  
def diferencia(cocinerosEnLaCocina, cocineroYa):
  conteoUno = 0
  conteoDos = 0

  for i in cocinerosEnLaCocina:
    if i not in cocineroYa:
      conteoUno += 1

  for i in cocineroYa:
    if i not in cocinerosEnLaCocina:
      conteoDos +=1

  if conteoUno <= conteoDos:
    return conteoUno
  else: 
    return conteoDos

