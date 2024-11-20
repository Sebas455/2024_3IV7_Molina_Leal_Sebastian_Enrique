#aqui vamosa a crear toda la logica de programacion de la pila

def crear_pila():
    return []

def apilar(pila, elemento):
    pila.append(elemento)

def esta_vacia(pila):
    return len(pila)==0

def desapilar(pila):
    if esta_vacia(pila):
        raise IndexError("Error no se puede desapilar, la pila está vacía")
    return pila.pop()

def cima(pila):
    if esta_vacia(pila):
        raise IndexError("La pila está vacía")
    return pila[-1]

def tamano(pila):
    return len(pila)

def mostrar_pila(pila):
    if esta_vacia(pila):
        raise IndexError("Error no se puede mostrar, la pila está vacía")
    return f"Pila actual: {pila}"