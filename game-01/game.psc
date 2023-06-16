
Algoritmo game
    // ------------------------------------------------
    // CONFIG
    gameSpeed <- 60
    screenW <- 60
    screenH <- 20
	
    // ------------------------------------------------
    // INIT 
    score <- 1
    dimension screenContent[screenW,screenH]
	
    dimension player[1,2]
    player[1,1] <- screenW / 2
    player[1,2] <- screenH / 2
    playerDirection = "L" // Left, Right, Top, Bottom 
    playerWidth = 1 // largo
	
	mientras verdadero Hacer
        // ------------------------------------------------
        // LOGIC
        score <- score + 1
        
        // direction
        xVel <- 0
        yVel <- 0
        si playerDirection = "L" entonces
			xVel <- 1
        finsi
        si playerDirection = "R" entonces
			xVel <- -1
        finsi
        si playerDirection = "T" entonces
			yVel <- -1
        finsi
        si playerDirection = "B" entonces
			yVel <- 1
        finsi
		
        // new last point
        newX <- player[playerWidth,1] + xVel
        newY <- player[playerWidth,2] + yVel
        newDirection <- 0
        // limit new position
        si newX > screenW entonces
            newX = screenW
            newDirection <- 1
        finsi
        si newX < 1 entonces
            newX = 1
            newDirection <- 1
        finsi
        si newY > screenH entonces
            newY = screenH
            newDirection <- 1
        finsi
        si newY < 1 entonces
            newY = 1
            newDirection <- 1
        finsi
        // select new direction
		si newDirection = 1 entonces
            segun azar(4) hacer
                0:
                    playerDirection <- "L" 
                1:
                    playerDirection <- "R" 
                2:
                    playerDirection <- "T" 
                3:
                    playerDirection <- "B" 
            finsegun
        finsi
		
		
		envolve <- azar(5)		
        // TO-DO: revisar si debe crecer
		si envolve = 1 entonces
			// enlarge
			playerWidth <- playerWidth + 1
			Redimensionar player[playerWidth, 2]
		SiNo			
			// 
			si playerWidth > 1 entonces
				
				Para i<-playerWidth-1 Hasta 2 Con Paso -1 Hacer
					player[i,1] = player[i-1,1]
					player[i,2] = player[i-1,2]
				Fin Para
				
				
			finsi
			
		finsi
		player[playerWidth,1] = newX
		player[playerWidth,2] = newY
		
		
        
		
        // ------------------------------------------------
        // DRAW
        
        pixel <- ""
        screenX <- 1
        screenY <- 1
		
        // clear screen in memory
        mientras screenY <= screenH Hacer
            mientras screenX <= screenW Hacer
                screenContent[screenX,screenY] <- " "
                screenX <- screenX + 1
            finmientras
            screenY <- screenY + 1
            screenX <- 1
        finmientras
		
        // show player
        playerPixel <- 1
        mientras playerPixel <= playerWidth hacer
			
            playerX <- player[playerPixel, 1]
            playerY <- player[playerPixel, 2]
            screenContent[playerX, playerY] <- "*"
			
            playerPixel <- playerPixel + 1
        finmientras
		
        // show screen
        lineToShow = ""
        screenX <- 1
        screenY <- 1
        Borrar Pantalla
		escribir "Score: ", score, " - Width: ", playerWidth
		escribir ""
        mientras screenY <= screenH Hacer
            mientras screenX <= screenW Hacer
                escribir screenContent[screenX,screenY] sin saltar
                screenX <- screenX + 1
            finmientras
            escribir ""
            screenY <- screenY + 1
            screenX <- 1
        finmientras
		
        // FIN DRAW
        esperar (1000 / gameSpeed) Milisegundos
	FinMientras	
FinAlgoritmo