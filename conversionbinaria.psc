Algoritmo conversionbinaria
	Definir num, cociente Como Entero
	definir binario como texto
	
	//el binario lo tengo que concatenar
	binario=""
	
	escribir "Escriba el numero que desea convertir"
	leer num

	si num>=0 Entonces
		mientras num>0 Hacer
			residuo=num%2
			//tengo que ir armando el binario
			nuevobinario<-ConvertirATexto(residuo)
			//concatenar los elementos de texto
			binario=nuevobinario+binario
			
			num=Trunc(num/2)
		FinMientras
		
		//si el numero es 0
		si binario="" Entonces
			binario="0"
		FinSi
	FinSi
	Escribir "El código binario es: ",binario
	Escribir "Escribe S para volver a escribir numeros o N par salir"
	Leer r
	Si r="S" o r="s" Entonces
		conversionbinaria()
	Fin Si
FinAlgoritmo
