Algoritmo Actividad3_TP2
	Definir mes como Entero 
	escribir "ingrese el numero de un mes: "
	leer mes
	
	Segun mes Hacer
		caso 1,3,5,7,8,10,12:
			escribir "el mes tiene 31 dias"
		caso 4,6,9,11:
			escribir "el mes tiene 30 dias"
		caso 2:
			escribir "el mes puede tener 28 o 29 dias"
		De Otro Modo:
			escribir "El numero es incorrecto, reingrese otro"
	Fin Segun
	
FinAlgoritmo