Algoritmo vida_personas
	maximopers<-100
	Dimension nacimiento[maximopers]  
	Dimension fallecimiento[maximopers] 
	Dimension aconsulta[100] 
	Escribir "Escriba la cantidad de personas que va a ingresar"
	Leer personas
	Mientras personas<1 o personas>100 Hacer
		Escribir "Ingrese numeros mayores a 0 o menores a 100"
		Leer personas
	Fin Mientras
	Escribir "Ingrese la cantidad de años que quiere buscar"
	Leer as
	Mientras as<1 o as>100 Hacer
		Escribir "Ingrese numeros mayores a 0 o menores a 100"
		Leer as
	Fin Mientras
	Para i<-1 Hasta personas Con Paso 1 Hacer
		Escribir "Ingrese el año en el que nacio la persona ",i
		Leer nacimiento[i]  
		Mientras nacimiento[i]<0 Hacer
			Escribir "Ingrese numeros mayores a 0"
			Leer nacimiento[i]  
		Fin Mientras
		Escribir "Ingrese el año en el que fallecio la persona ",i
		Leer fallecimiento[i] 
		Mientras fallecimiento[i]<nacimiento[i] Hacer
			Escribir "Ingrese un año mayor al de nacimiento"
			Leer fallecimiento[i] 
		Fin Mientras
	Fin Para
	Para i<-1 Hasta as Con Paso 1 Hacer
		Escribir "Ingrese el año " i, " que quiere consultar"
		Leer aconsulta[i]
	Fin Para
	Para a Desde 1 Hasta as Hacer
		vivos<-0
		joven<-100
		viejo<-0
		Para c Desde 1 Hasta personas Hacer
			Si aconsulta[a] >= nacimiento[c] y aconsulta[a] <= fallecimiento[c] Entonces
				vivos<-vivos+1
				edad<-aconsulta[a]-nacimiento[c]
				Si edad<joven Entonces
					joven<-edad
				Fin Si
				Si edad>viejo Entonces
					viejo<-edad
				Fin Si
			Fin Si
		Fin Para
		Escribir "En el año ",aconsulta[a]," habían " ,vivos " personas vivas"
		Si vivos > 0 Entonces
            Escribir "La persona viva más joven tenía ", joven, " años."
            Escribir "La persona viva más anciana tenía ", viejo, " años."
        Sino
            Escribir "No había personas vivas en este año."
        Fin Si
	Fin Para
	
FinAlgoritmo
