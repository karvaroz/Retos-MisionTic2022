producto = input('Ingrese el nombre del producto: ')

cu = int(input('Ingrese el costo unitario del producto: '))

pvp = int(input('Ingrese el precio de venta unitario del producto: '))

cantidad = int(input('Ingrese las unidades disponibles del producto: '))

ganancia = (pvp * cantidad) - (cu * cantidad)


print('Producto: ' + producto)
print('CU: $' + str(cu))
print('PVP: $' + str(pvp))
print('Unidades Disponibles: ' + str(cantidad))
print('Ganancia: ' + str(ganancia))