import wollok.game.*
import casillas.*
import mapa.*
import personajes.*
import contadores.*
import esferas.*


object juego{
 const property jugadores = [azul, rojo]
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
		esferas.crear()
		mapa.posicionesPermitidas()
	}
	
	method visuales(){
		
		puertas.puertas().forEach{puerta => game.addVisual(puerta)}
		esferas.esferas().forEach{esfera => game.addVisual(esfera)}
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
		game.onTick(2100,"mover",{esferas.mover()})
	}
	
	method colisiones(){
		puertas.puertas().forEach{puerta => game.whenCollideDo(puerta, {elemento => puerta.esColisionado(elemento)})}
		esferas.esferas().forEach{esfera => game.whenCollideDo(esfera,{elemento => esfera.esColisionado(elemento)})}
		jugadores.forEach{jugador => game.whenCollideDo(jugador, {elemento => jugador.esColisionado(elemento)})}
	}
}

