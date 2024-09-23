Algoritmo cobroestacionamiento
	Definir horaentrada, minutoentrada, horasalida, minutosalida Como Real
	Definir totalHoras, totalMinutos, minutostotalescuenta Como Real
	Definir totalcobro Como Real
	
	Escribir "Ingrese la hora de entrada (formato de 24 horas)"
	Leer horaentrada
	Escribir "Ingrese los minutos de entrada (formato de 0 - 59 segundos)"
	Leer minutoentrada
	Escribir "Ingrese la hora de salida (formato de 24 horas)"
	Leer horasalida
	Escribir "Ingrese los minutos de salida (formato de 0 - 59 segundos)"
	Leer minutosalida
	
	totalHoras=horasalida-horaentrada
	totalMinutos=minutosalida-minutoentrada
	
	Si totalMinutos<0 Entonces
		totalMinutos=totalMinutos+60
		totalHoras=totalHoras-1
	Fin Si
	
	totalMinutos=(totalHoras*60)+totalMinutos
	
	totalcobro=0
	Si totalMinutos>=60 Entonces
		totalcobro=totalcobro+(totalMinutos/60)*15
	Fin Si
	
	minutosrestantes=totalMinutos%60
	Si minutosrestantes>0 Entonces
		fracciones15min=minutosrestantes
		
		totalcobro=totalcobro+fracciones15min*6
	Fin Si
	
	Escribir "El total a pagar es de: ", totalcobro, " pesos"
	
FinAlgoritmo
