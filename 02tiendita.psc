Algoritmo tiendita
	Definir producto como Texto
	Definir codigoproducto, cantidad Como Entero
	Definir precio Como Real
	
	Mientras opcion<>5 Hacer
		Escribir "1.- Ingresa un nuevo producto"
		Escribir "2.- Actualza un producto"
		Escribir "3.- Consulta el iventario"
		Escribir "4.- Generar reporte"
		Escribir "5.- Salir"
		Leer opcion
		Segun opcion Hacer
			Caso 1:
				Escribir "Ingresa el nombre del producto"
				Leer producto
				Escribir "Ingresa el codigo del producto"
				Leer codigoproducto
				Escribir "Ingresa la cantidad"
				Leer cantidad
				Escribir "Ingresa precio"
				Leer precio
			Caso 2:
				Escribir "Ingresa el codigo del producto a actualizar"
				Leer codigoproducto
				Escribir "ingresa la nueva cantidad"
				Leer cantidad
			Caso 3:
				Escribir "Consultar inventario"
				Escribir "Nombre del producto", producto
				Escribir "Codigo del producto", codigoproducto
				Escribir "Precio del producto", precio
				Escribir "Cantidad del producto", cantidad
			Caso 4:
				Escribir "Habia una vez un patito"
			De Otro Modo:
				secuencia_de_acciones_dom
		Fin Segun
	Fin Mientras
FinAlgoritmo
