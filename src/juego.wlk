import wollok.game.*
import casillas.*
import mapa.*
import personajes.*
import contadores.*
import esferas.*
import pantalla.*


object juego{
 const property jugadores = [azul, rojo]
 const sonido =  game.sound("assets/musica.mp3")
 var juegoIniciado = false
	method iniciar(){
		self.crear()
		self.mapear()
		game.addVisual(pantalla)
		keyboard.enter().onPressDo({self.empezar()})
		keyboard.space().onPressDo({self.ayuda()})
		game.start()
	}
	
	method mapear(){
		mapa.casillas()
		puertas.crear()
		esferas.crear()
		esferas.posicionesPermitidasEsferas()
		mapa.posicionesPermitidas()
	}
	
	method crear() {
		game.title('Agua vs Lava')
		game.width(16)
		game.height(19)
		game.boardGround("assets/fondo.png")
		game.cellSize(50)	
		game.schedule(1,{sonido.play()})
		sonido.shouldLoop(true)
	   }
	  
	method ayuda(){
	   pantalla.cambiarImagen("assets/ayuda.png")	
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
	
	method empezar(){
		if(!juegoIniciado) {
		game.removeVisual(pantalla)
		self.visuales()
		self.jugar()
		juegoIniciado = true
		self.colisiones()
	   }
	 }
	 	
	method jugar(){
        reloj.iniciar()
		azul.control()
		rojo.control()
		game.onTick(500,"mover",{esferas.mover()})
	}
	
	method colisiones(){
		 puertas.puertas().forEach{puerta => game.whenCollideDo(puerta, {elemento => puerta.esColisionado(elemento)})}
		 esferas.esferas().forEach{esfera => game.whenCollideDo(esfera,{elemento => esfera.esColisionado(elemento)})}
		 jugadores.forEach{jugador => game.whenCollideDo(jugador, {elemento => jugador.esColisionado(elemento)})}
	}
	
	
	
	
}

