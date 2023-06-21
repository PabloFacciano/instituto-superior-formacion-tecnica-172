algoritmo ej1
    definir valorunitario, cantidad, descuento, preciofinal, iva como numerico;
    definir tipopago como texto;

    escribir "valor unitario";
    leer valorunitario;
    escribir "cantidad";
    leer cantidad;
    escribir "descuento";
    leer descuento;
    escribir "tipo de pago";
    leer tipopago;
    
    preciofinal <- valorunitario * cantidad;
    iva <- ((21 * preciofinal) / 100);
    preciofinal <- preciofinal + iva;
    si tipopago = "efectivo" entonces
        preciofinal <- preciofinal - descuento;
    finsi

    escribir preciofinal;
finalgoritmo