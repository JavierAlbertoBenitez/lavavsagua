import wollok.game.*
import casillas.*
import mapa.*
import personajes.*
import contadores.*
import esferas.*


object juego{
 const jugadores = [azul, rojo]
 
	method iniciar(){
		self.crear()
		self.mapear()
		self.visuales()
		self.jugar()
		self.colisiones()
		game.start()
	}
	
	method crear(){
		game.title('Agua vs Lava')
		game.width(16)
		game.height(19)
		game.boardGround("assets/fondo.png")
		game.cellSize(50)	
	}
	
	method mapear(){
		mapa.casillas()
		puertas.crear()
		mapa.posicionesPermitidas()
	}
	
	method visuales(){
		
		puertas.puertas().forEach{puerta => game.addVisual(puerta)}
		game.addVisual(puntosAzul)
		game.addVisual(puntosRojo)
		game.addVisual(azul)
		game.addVisual(rojo)
		game.addVisual(reloj)
	}
	
	method jugar(){
		reloj.iniciar()
		azul.control()
		rojo.control()
	}
	
	method colisiones(){
		puertas.puertas().forEach{puerta => game.whenCollideDo(puerta, {elemento => puerta.esColisionado(elemento)})}
		jugadores.forEach{jugador => game.whenCollideDo(jugador, {elemento => jugador.esColisionado(elemento)})}
	}
}

