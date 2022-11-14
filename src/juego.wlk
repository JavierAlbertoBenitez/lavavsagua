import wollok.game.*
import mapa.*
import personajes.*


object juego{
	
	method iniciar(){
		self.crear()
		self.mapear()
		self.visuales()
		self.jugar()
		self.colisiones()
		game.start()
	}
	
	method crear(){
		game.title('Pac man')
		game.width(16)
		game.height(19)
		game.boardGround("assets/fondo.png")
		game.cellSize(50)	
	}
	
	method mapear(){
		mapa.casillas()
		mapa.posicionesProhibidas()
		puertas.crear()
	}
	
	method visuales(){
		puertas.puertas().forEach{puerta => game.addVisual(puerta)}
		game.addVisual(azul)
		game.addVisual(rojo)
		game.addVisual(puntosAzul)
		game.addVisual(puntosRojo)
	}
	
	method jugar(){
		azul.control()
		rojo.control()
	}
	
	method colisiones(){
		game.whenCollideDo(azul, {elemento => azul.colision(elemento)})
		game.whenCollideDo(rojo, {elemento => rojo.colision(elemento)})
		puertas.puertas().forEach{puerta => game.whenCollideDo(puerta, {elemento => puerta.esColisionado(elemento)})}
	}
	
	
	
	
}

