Algoritmo ej2
    definir nombre como texto
    definir nota, sumanotas como numero
    definir promedio como real

    Escribir "Ingresar el nombre del estudiante: "
    leer nombre
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingresar la nota ",i," de 10:"
		leer nota
		si nota <= 0 Entonces
			Escribir "La nota no puede ser menor a 1."
            i <- i - 1
        sino
            si nota > 10 entonces
                Escribir "La nota no puede ser mayor a 10."
                i <- i - 1
            sino
                sumanotas <- sumanotas + nota
            finsi
		FinSi
	Fin Para
    promedio <- (sumanotas / 10)

    Escribir "---------------------------------"
	Escribir "Nombre del estudiante: ", nombre
	Escribir "Promedio de 10 notas: ", promedio
FinAlgoritmo
