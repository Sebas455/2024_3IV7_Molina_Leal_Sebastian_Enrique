#derivado a  que es necesario poder almacenar diferentes fentes de datos, en python se utiliza la variable diccionario
#un diccionario es capas de poder almacenar diferntes tipos de datos en formato de lista
import tkinter as tk
from tkinter import messagebox, simpledialog

#primero vamos a crear una lista de alumnos
alumnos=[]

#el examen debe de tener al menos 8 elementos de la lista que desean guardar
#el examen debe de poseer elementos de dialogo y mensajes de salida con tkinter
#la lista debe de implementar al menos 30 diferentes elementos y debe verse una interfaz mediante la cual los imprima en formato de lista


#vamos a crear una funcion que se encargue de registrar un alumno

def registrar_alumno():
    boleta=simpledialog.askstring("Entrada","Ingresa la boleta del alumno: ")
    nombre=simpledialog.askstring("Entrada","Ingresa el nombre del alumno: ")
    appat=input("Ingresa el apellido paterno del alumno: ")
    apmat=input("Ingresa el apellido materno del alumno: ")
    fecnac=input("Ingresa la fecha de nacimiento(dd/mm/aaaa) del alumno: ")


    calificaciones=[]
#vamos  a solicitar 3 calificaiones
    for i in range(1,4):
        calificacionparcial=float(input("Ingrese la calificacion del parcial: "))
        calificaciones.append(calificacionparcial)

#defino al almuno
    alumno={
        "boleta":boleta,
        "nombre":nombre,
        "apellido_parterno":appat,
        "apellido_materno":apmat,
        "fecha_nacimiento":fecnac,
        "calificaciones":calificaciones
    }

    alumnos.append(alumno)
    messagebox.showinfo("Exito","El alumno se ha registrado exitosamente")
#funcion para poder consultar los datos del arreglo de alumnos(lista)
def consultar_alumnos():
    if not alumnos:
        print("No hay registros")
    else:
        print("Lista de Alumnos: \n")
        for alumno in alumnos: 
            print("Boleta: {alumno['boleta']}, Nombre:  {alumno['nombre]}{alumno['apellido_paterno]}{alumno['apelllido_materno]}, Fecha de Nacimiento: {alumno['fecha_nacimiento]}, Calificaciones: {alumno['calificaciones']}\n")
            
#funcion para buscar y editar por la boleta
def editar_alumno():
    boleta=input("Ingrese la boleta del alumno que desea editar: ")
    for alumno in alumnos:
        if alumno['boleta']==boleta:
            alumno['nombre']=input("Ingresa el nuevo nombre o presiona Enter para mantener el actual:") or alumno['nombre']
            alumno['apellido_paterno']=input("Ingresa el nuevo apellido paterno o presiona Enter para mantener el actual:") or alumno['apelldio_paterno']
            alumno['apellido_materno']=input("Ingresa el nuevo apellido materno o presiona Enter para mantener el actual:") or alumno['apelldio_materno']
            alumno['fecha_nacimiento']=input("Ingresa la nueva fecha de nacimiento o presiona Enter para mantener el actual:") or alumno['fecha_nacimiento']
            #editamos las calificaciones
            for i in range(3):
                nueva_calificacion=input("Ingresa la nueva calificiacion o presiona Enter para mantener el actual")
                if nueva_calificacion:
                    alumno['calificaciones'][i]=float(nueva_calificacion)
    return
    print("No hay mas alumnos")

#eliminar alumno
def eliminar_alumno():
    print("")

#vamos a crear un menu
def main():
    while True:
        print("Menu de Gestión de Proximos Extras")
        print("1.-Registrar alumno")
        print("2.-Consultar lista de Alumno")
        print("3.-Editar Alumno")
        print("4.-Eliminar Alumno")
        print("5.-Salir")

        opcion=input("Seleccione una opción: ")

        if opcion=="1":
            registrar_alumno()
        elif opcion=="2":
            consultar_alumnos()
        elif opcion=="3":
            editar_alumno()
        elif opcion=="4":
            eliminar_alumno()
        elif opcion=="5":
            print("Ayos")
            break
        else:
            print("opcion no valida")

main()