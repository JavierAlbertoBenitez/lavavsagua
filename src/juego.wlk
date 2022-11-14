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
		esferas.crear()
		esferas.mover()
	}
	
	method visuales(){
		
		puertas.puertas().forEach{puerta => game.addVisual(puerta)}
		esferas.esferas().forEach{esfera => game.addVisual(esfera)}
		game.addVisual(azul)
		game.addVisual(rojo)
		game.addVisual(puntosAzul)
		game.addVisual(puntosRojo)
		game.addVisual(reloj)
	}
	
	method jugar(){
		azul.control()
		rojo.control()
		reloj.iniciar()
	}
	
	method colisiones(){
		game.whenCollideDo(azul, {elemento => azul.colision(elemento)})
		game.whenCollideDo(rojo, {elemento => rojo.colision(elemento)})
		puertas.puertas().forEach{puerta => game.whenCollideDo(puerta, {elemento => puerta.esColisionado(elemento)})}
	}
}

