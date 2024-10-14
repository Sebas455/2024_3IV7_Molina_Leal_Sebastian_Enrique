Algoritmo chicharronera
	Escribir "Ingrese el valor de a"
	Leer a
	Escribir "Ingrese el valor de b"
	leer b
	Escribir "Ingrese el valor de c"
	leer c 
	d<-(b)^2-4*a*c
	si d<=-1 Entonces
		Escribir "La ecucación no es real"
	Sino
		x1<-	(-(b)-(raiz(d)))/(2*a)
		x2<-	(-(b)+(raiz(d)))/(2*a)
		Escribir "Su resultado x1 es: ",x1
		Escribir "Su resultado x2 es: ",x2
	FinSi
	Escribir "Escribe S para volver a escribir numeros o N par salir"
	Leer r
	Si r="S" o r="s" Entonces
		chicharronera()
	Fin Si
	
FinAlgoritmo
