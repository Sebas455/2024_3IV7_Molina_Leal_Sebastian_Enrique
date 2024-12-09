import time
import tkinter as tk
from tkinter import messagebox, ttk
from metodos import burbuja, seleccion_sort, insercion, merge, quick_sort

def menu():
    ventana = tk.Tk()
    ventana.geometry("500x450")
    ventana.configure(bg = "SteelBlue3")

    texto_config = ('Arial', 18, 'bold')
    texto = tk.Text(ventana, height=5, width=70)
    texto.insert(tk.END, "Ingresa los valores numéricos separado por espacios")
    texto.config(state=tk.DISABLED, bg="SteelBlue3", font=texto_config, fg='white', borderwidth=0)
    texto.pack(padx = 70, pady = 10)

    texto_config1 = ('Arial', 15, 'bold')
    numeros = tk.Entry(ventana, bg='white', fg='black', borderwidth=0, width=30, font=texto_config1)
    numeros.place(x = 80, y = 90)

    metodo_seleccionado = tk.StringVar(value="Seleccione un método")
    metodos = ["Burbuja", "Selección", "Inserción", "Merge Sort", "Quick Sort"]
    dropdown = ttk.OptionMenu(ventana, metodo_seleccionado, *metodos)
    dropdown.place(x = 200, y = 160)

    def procesar_datos():
        entrada = numeros.get()
        try:
            lista = list(map(int, entrada.split()))
            if len(lista) > 40:
                messagebox.showerror("Error", "Por favor, ingresa un máximo de 40 números.")
                return

            start_time = time.time()
            metodo = metodo_seleccionado.get()
            if metodo == "Burbuja":
                resultado = burbuja(lista)
            elif metodo == "Selección":
                resultado = seleccion_sort(lista)
            elif metodo == "Inserción":
                resultado = insercion(lista)
            elif metodo == "Merge Sort":
                resultado = merge(lista)
            elif metodo == "Quick Sort":
                resultado = quick_sort(lista)
            else:
                messagebox.showerror("Error", "Selecciona un método de ordenamiento.")
                return
            end_time = time.time()
            elapsed_time = end_time - start_time

            messagebox.showinfo("Resultado", f"Lista ordenada: {resultado}\n Tiempo de ejecución: {elapsed_time:.6f} segundos")
        except ValueError:
            messagebox.showerror("Error", "Por favor, ingresa solo números enteros separados por espacios.")


    tk.Button(ventana, text = "Ordenar", command = procesar_datos, borderwidth = 0, bg = "PaleTurquoise1", fg = "white", font = texto_config1, width = 20).place(x = 120, y = 240)

    ventana.mainloop()
menu()