def ingresar_matriz(n):
    matriz = []
    print(f"Ingrese los elementos de una matriz {n}x{n}:")
    for i in range(n):
        fila = []
        for j in range(n):
            valor = int(input(f"Ingrese el valor de la posición [{i+1}],[{j+1}]: "))
            fila.append(valor)
        matriz.append(fila)
    return matriz

def imprimir_matriz(matriz, imp):
    print(imp)
    for fila in matriz:
        for elemento in fila:
            print(elemento, end=" ")
        print(" ") 

def transponer_matriz(matriz):
    return [[matriz[j][i] for j in range(len(matriz))] for i in range(len(matriz[0]))]

tamaño = int(input("Ingrese el tamaño de la matriz (3 o 5): "))
if tamaño in [3, 5]:
    matriz = ingresar_matriz(tamaño)
    imprimir_matriz(matriz, "Matriz original:")
    imprimir_matriz(transponer_matriz(matriz), "Matriz transpuesta:")
else:
    print("Solo se acepta 3x3 o 5x5.")
