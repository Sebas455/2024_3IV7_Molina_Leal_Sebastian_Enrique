def decimal_a_binario(decimal):
    binario = ""
    while decimal > 0:
        binario = str(decimal % 2) + binario
        decimal //= 2
    return binario or "0"

def binario_a_decimal(binario):
    return sum(int(bit) * (2 ** i) for i, bit in enumerate(binario[::-1]))

def mostrar_menu():
    print("1. Convertir Decimal a Binario")
    print("2. Convertir Binario a Decimal")

def main():
    mostrar_menu()
    opcion = input("Introduce el número de la opción elegida: ").upper()
    
    if opcion == "1":
        decimal = int(input("Ingresa el número decimal: "))
        print("El número en binario es:", decimal_a_binario(decimal))
    elif opcion == "2":
        binario = input("Ingresa el número binario: ").strip()
        print("El número en decimal es:", binario_a_decimal(binario))
    else:
        print("Opción no válida. Intenta nuevamente.")

main()
