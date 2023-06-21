Algoritmo ej2
	Definir nPositivos, nNegativos, entrada como Numero
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		Escribir "Ingresar un número (",i,"/10):"
		leer entrada
		si entrada < 0 Entonces
			nNegativos <- nNegativos + 1
        sino
            si entrada != 0 entonces
                nPositivos <- nPositivos + entrada
            finsi
		FinSi
	Fin Para
	Escribir "Cantidad de negativos: ", nNegativos
	Escribir "Suma de números positivos: ", nPositivos
FinAlgoritmo
