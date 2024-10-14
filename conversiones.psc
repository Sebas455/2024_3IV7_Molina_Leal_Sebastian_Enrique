Algoritmo conversionesdistancia
	escribir "Ingrese la cantidad en pies que quiere convertir"
	leer a
	Escribir " 1(Pulgadas), 2(Yardas), 3(CM) o 4(Metros)"
	leer b 
	Segun b Hacer
		1:
			pulgadas<-a*12
			Escribir "El valor de pies a pulagas es ",pulgadas
		2:
			yardas<-a/3
			Escribir "El valor de pies a yardas es ",yardas
		3:
			c<-a*2.54
			CM<-c*12
			Escribir "El valor de pies a centimetros es ",CM
		4:
			Metros<-a/3.281
			Escribir "El valor de pies a metros es ",Metros
	Fin Segun
	Escribir "Escribe S para volver a escribir numeros o N par salir"
	Leer r
	Si r="S" o r="s" Entonces
		conversionesdistancia()
	Fin Si
FinAlgoritmo
