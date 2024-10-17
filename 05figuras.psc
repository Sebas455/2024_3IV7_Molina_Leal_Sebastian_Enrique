//vamos a crear un programa para calcular areas y perimetros pero con el uso de subprocesos

//vamos a crear el subproceso del rectangulo
SubProceso Rectangulo(base,altura)
	Definir area, perimetro como real
	area=base*altura
	perimetro=2*(base+altura)
	Escribir "El área del rectángulo es: ",area
	Escribir "El perímetro del rectángulo es: ",perimetro
FinSubProceso

SubProceso Triangulo(base,altura,lado1,lado2,lado3)
	Definir area, perimetro como real
	area=(base*altura)/2
	perimetro=lado1+lado2+lado3
	Escribir "El área del triangulo es: ",area
	Escribir "El perímetro del triangulo es: ",perimetro
FinSubProceso

SubProceso Pentagono(apotema, lado1,lado2,lado3,lado4,lado5)
	Definir area, perimetro como real
	perimetro=lado1+lado2+lado3+lado4+lado5
	area=(perimetro*apotema)/2
	Escribir "El área del pentágono es: ",area
	Escribir "El perímetro del pentágono es: ",perimetro
FinSubProceso

SubProceso Trapecio(basemayor,basemenor,altura,lado1,lado2)
	Definir area, perimetro como real
	area=((basemayor+basemenor)*altura)/2
	perimetro=baseM+basem+lado1+lado2
	Escribir "El área del trapecio es: ",area
	Escribir "El perímetro del trapecio es: ",perimetro
FinSubProceso

SubProceso Rombo(diagonalmayor,diagonalmenor,lado1,lado2,lado3,lado4)
	Definir area, perimetro como real
	area=(diagonalmayor*diagonalmenor)/(2)
	perimetro=lado1+lado2+lado3+lado4
	Escribir "El área del rombo es: ",area
	Escribir "El perímetro del rombo es: ",perimetro
FinSubProceso

SubProceso Cuadrado(lado)
	Definir area, perimetro como real
	area=lado*lado
	perimetro=lado*4
	Escribir "El área del cuadrado es: ",area
	Escribir "El perímetro del cuadrado es: ",perimetro
FinSubProceso

SubProceso Hexagono(apotema,lado)
	Definir area, perimetro como real
	perimetro=6*lado
	area=perimetro*apotema
	Escribir "El área del hexagono es: ",area
	Escribir "El perímetro del hexagono es: ",perimetro
FinSubProceso

SubProceso Circulo(radio)
	Definir area, perimetro como real
	perimetro=2*(PI*radio)
	area=(radio^2)*PI
	Escribir "El área del ciruclo es: ",area
	Escribir "El perímetro del ciruclo es: ",perimetro
FinSubProceso



Algoritmo CalculadoraDeFiguras
	Definir opcion Como Caracter
	Definir base,altura,lado1,lado2,lado3 Como Real
	//vamos a crear el menu
	Escribir "Selecciona una opción"
	Escribir "A área y perimetro del rectangulo"
	Escribir "B área y perimetro del triangulo"
	Escribir "C área y perimetro del pentágono"
	Escribir "D área y perimetro del trapecio"
	Escribir "E área y perimetro del rombo"
	Escribir "F área y perimetro del cuadrado"
	Escribir "G área y perimetro del hexágono"
	Escribir "H área y perimetro del círculo"
	
	leer opcion
	Segun opcion hacer 
		Caso "A":
			Escribir "Ingresa la base del rectangulo"
			Leer base
			Escribir "Ingresa la altura del rectangulo"
			Leer altura
			Rectangulo(base,altura)
		Caso "B":
			Escribir "Ingresa la base del triangulo"
			Leer base
			Escribir "Ingresa la altura del triangulo"
			Leer altura
			Escribir "Ingresa lado 1"
			Leer lado1
			Escribir "Ingresa lado 2"
			Leer lado2
			Escribir "Ingresa lado 3"
			Leer lado3
			Triangulo(base,altura,lado1,lado2,lado3)
		Caso "C":
			Escribir "Ingresa el apotema del pentágono"
			Leer apotema
			Escribir "Ingresa lado 1"
			Leer lado1
			Escribir "Ingresa lado 2"
			Leer lado2
			Escribir "Ingresa lado 3"
			Leer lado3
			Escribir "Ingresa lado 4"
			Leer lado4
			Escribir "Ingresa lado 5"
			Leer lado5
			Pentagono(apotema,lado1,lado2,lado3,lado4,lado5)
		Caso "D":
			Escribir "Ingresa la base mayor"
			Leer baseM
			Escribir "Ingresa la base menor"
			Leer basem
			Escribir "Ingresa la altura"
			Leer altura
			Escribir "Ingresa lado 1"
			Leer lado1
			Escribir "Ingresa lado 2"
			Leer lado2
			Trapecio(baseM,basem,altura,lado1,lado2)
		Caso "E":
			Escribir "Ingresa la diagonal mayor"
			Leer diagonalmayor
			Escribir "Ingresa la diagonal menor"
			Leer diagonalmenor
			Escribir "Ingresa lado 1"
			Leer lado1
			Escribir "Ingresa lado 2"
			Leer lado2
			Escribir "Ingresa lado 3"
			Leer lado3
			Escribir "Ingresa lado 4"
			Leer lado4
			Rombo(diagonalmayor,diagonalmenor,lado1,lado2,lado3,lado4)
		Caso "F":
			Escribir "Ingresa un lado del cuadrado"
			Leer lado
			Cuadrado(lado)
		Caso "G":
			Escribir "Ingresa el apotema del hexagono"
			Leer apotema
			Escribir "Ingresa un lado del hexagono"
			Leer lado
			Hexagono(apotema,lado)
		Caso "H":
			Escribir "Ingresa el radio del circulo"
			Leer radio
			Circulo(radio)
	FinSegun
	Escribir "Ingrese S si quiere calcular otra figura o N para salir"
	Leer respuesta
	Si respuesta="S" Entonces
		CalculadoraDeFiguras()
	Fin Si
FinAlgoritmo
