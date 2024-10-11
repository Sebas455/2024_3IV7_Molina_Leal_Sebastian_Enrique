Algoritmo sumanumerosentre1y10
	Definir N Como Entero
	Definir Suma Como Entero
	N=0
	Suma=0
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Escribir N
		N=N+1
		Escribir N
		Suma=Suma+N
		Escribir Suma
	Fin Para
	Escribir "La suma es: ",Suma
	Escribir "Escribe S para volver a escribir numeros o N par salir"
	Leer b
	Si b="S" o b="s" Entonces
		sumanumerosentre1y10()
		
	Fin Si
FinAlgoritmo
