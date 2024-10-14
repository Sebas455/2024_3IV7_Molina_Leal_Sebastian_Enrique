Algoritmo conversiontemperatura
	Escribir "Ingrese la cantidad de grados Farenheit que quiere convertir"
	Leer grados
	Escribir "1(Celsius), 2(Kelvin), 3(Rankine)"
	Leer b
	Segun b Hacer
		1:
			celsius<-(grados-32)*(5/9)
			escribir "La cantidad de Farenheit a Celsius es: ",celsius
		2:
			Kelvin<-((grados-32)*(5/9))+273.15
			escribir "La cantidad de Farenheit a Kelvin es: ",Kelvin
		3:
			Rankine<-grados+459.67
			escribir "La cantidad de Farenheit a Rankine es: ",Rankine
	Fin Segun
	Escribir "Escribe S para volver a escribir numeros o N par salir"
	Leer r
	Si r="S" o r="s" Entonces
		conversiontemperatura()
	Fin Si
FinAlgoritmo
