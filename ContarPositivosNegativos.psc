Algoritmo ContarPositivosNegativos
	Definir numero, positivos, negativos, cantidadNumeros Como Entero
		
	Escribir "�Cu�ntos n�meros deseas ingresar?"
	Leer cantidadNumeros
		
	Para i <- 1 Hasta cantidadNumeros Con Paso 1 Hacer
		Escribir "Introduce el n�mero ", i
		Leer numero
		Si numero > 0 Entonces
			positivos <- positivos + 1
		SiNo
			Si numero < 0 Entonces
				negativos <- negativos + 1
			FinSi
		FinSi
	FinPara
		
	Escribir "Cantidad de n�meros positivos: ", positivos
	Escribir "Cantidad de n�meros negativos: ", negativos
FinAlgoritmo
