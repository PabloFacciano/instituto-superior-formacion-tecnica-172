Algoritmo ej1
	Definir nMayorQueTres, entrada como Numero
	Para i<-1 Hasta 7 Con Paso 1 Hacer
		Escribir "Ingresar un número (",i,"/7):"
		leer entrada
		si entrada < 3 Entonces
			nMayorQueTres <- nMayorQueTres + 1
		FinSi
	Fin Para
	Escribir "Cantidad de numeros mayores que 3: ", nMayorQueTres
FinAlgoritmo
