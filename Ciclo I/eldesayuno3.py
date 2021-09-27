import json

data = input()

consulta = input().replace(" ", '').upper()

dictt = json.loads(data)

consEx = ""

contador = 0


for i in consulta:
  if i in dictt:
    consEx += i + " "
    contador += dictt.get(i)

print(contador)   
print(consEx)