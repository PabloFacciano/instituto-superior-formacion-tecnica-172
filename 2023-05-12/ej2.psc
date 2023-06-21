algoritmo viernes_12
    definir diadesemana, fecha como texto;
    definir temperaturamaxima, temperaturaminima, promedio como real;

    leer diadesemana;
    leer fecha;
    leer temperaturamaxima;
    leer temperaturaminima;

    promedio <- (temperaturamaxima + temperaturaminima) /2;

    escribir "la fecha es: " , fecha;
    escribir "temperatura mínima:", temperaturaminima;
    escribir "temperatura máxima: ", temperaturamaxima;
    escribir "en promedio la temperatura es:", promedio;
finalgoritmo