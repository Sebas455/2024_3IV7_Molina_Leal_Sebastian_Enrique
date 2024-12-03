from metodos import burbuja, seleccion_sort, insercion, merge, quick_sort
import time

def obtener_lista_numeros():
    print("Antes de elegir tu método de ordenamiento crea una lista de números")
    
    while True:
        try:
            cantidad = int(input("¿Cuántos números deseas ingresar? (máximo 40): "))
            if 1 <= cantidad <= 40:
                break
            else:
                print("Ingresa un número entre 1 y 40.")
        except ValueError:
            print("Entrada inválida. Asegúrate de ingresar un número entero.")

    listas = []
    
    print(f"Ingresarás {cantidad} números.")
    for i in range(cantidad):
        while True:
            try:
                lista = float(input(f"Ingrese el número {i+1}: "))
                listas.append(lista)
                break
            except ValueError:
                print("Entrada inválida. Asegúrate de ingresar un número.")

    return listas  # Mantiene el orden original

# Ejecución
lista_numeros = obtener_lista_numeros()
print(f"Lista de números en el orden ingresado: {lista_numeros}")


def menu():
    print("1.-Ordenamiento de burbuja")
    print("2.-Ordenamiento método sort")
    print("3.-Ordenamiento método de insercion")
    print("4.-Ordenamiento merge")
    print("5.-Ordenamiento quick sort")

menu()
opcion = input("Elige una opción entre los ordenamientos: ").upper()

inicio = time.time()

if opcion == "1":
    resultado = burbuja(lista_numeros)  
    print(f"Lista ordenada con burbuja: {resultado}")
elif opcion == "2":
    resultado = seleccion_sort(lista_numeros)
    print(f"Lista ordenada con seleccion sort: {resultado}")
elif opcion == "3":
    resultado = insercion(lista_numeros)
    print(f"Lista ordenada con insercion: {resultado}")
elif opcion == "4":
    resultado = merge(lista_numeros)
    print(f"Lista ordenada con merge: {resultado}")
elif opcion == "5":
    resultado = quick_sort(lista_numeros)
    print(f"Lista ordenada con quick sort: {resultado}")
else:
    print("Opcion no valida")

fin = time.time()

tiempo_total = fin - inicio
print(f"Tiempo total para el ordenamiento: {tiempo_total:.4f} segundos.")