Algoritmo ContarPositivosNegativos
	Definir numero, positivos, negativos, cantidadNumeros Como Entero
		
	Escribir "¿Cuántos números deseas ingresar?"
	Leer cantidadNumeros
		
	Para i <- 1 Hasta cantidadNumeros Con Paso 1 Hacer
		Escribir "Introduce el número ", i
		Leer numero
		Si numero > 0 Entonces
			positivos <- positivos + 1
		SiNo
			Si numero < 0 Entonces
				negativos <- negativos + 1
			FinSi
		FinSi
	FinPara
		
	Escribir "Cantidad de números positivos: ", positivos
	Escribir "Cantidad de números negativos: ", negativos
FinAlgoritmo
