Algoritmo ej2
	Definir nPares, entrada como Numero
	Para i<-1 Hasta 20 Con Paso 1 Hacer
		Escribir "Ingresar un número (",i,"/20):"
		leer entrada
		si (entrada mod 2) = 0 Entonces
			nPares <- nPares + 1
		FinSi
	Fin Para
	Escribir "Cantidad de numeros pares: ", nPares
FinAlgoritmo
