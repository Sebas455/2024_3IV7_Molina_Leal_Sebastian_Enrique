Algoritmo Numerosparaimpares
	Definir a Como Entero
	
	Para a=1 Hasta 100 Con Paso 1 Hacer
		Si (a%2)<>0 Entonces
			Escribir a
		Fin Si
	Fin Para
	Escribir "Escribe S para volver a escribir numeros o N par salir"
	Leer b
	Si b="S" o b="s" Entonces
		Numerosparaimpares()
	Fin Si
FinAlgoritmo
