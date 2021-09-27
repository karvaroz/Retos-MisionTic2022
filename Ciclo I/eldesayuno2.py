registros = input("Ingrese los códigos ").upper().split(' ')
total = len(registros)
actual = ""
anterior = ""
repeticiones = 0
resultados = ""
salida = ""
for i in range(total):
    if i == 0:
        anterior = registros[i]
        repeticiones += 1
        continue
    else:
        actual = registros[i]
        if actual == anterior:
            repeticiones += 1          
            
        else:
            resultados += f"{anterior} "
            salida += f"{repeticiones} "
            repeticiones = 1
        anterior = actual
        if i == total-1:
            resultados += anterior
            salida += str(repeticiones)          
print(f"{resultados}\n\n{salida}")