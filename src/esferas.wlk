import wollok.game.*
import direcciones.*
import mapa.*
import personajes.*
import juego.*
import casillas.*

class Esfera{
	var property position
	const direcciones = [arriba, abajo, derecha, izquierda] 
	
	method image() = "assets/esfera.png"
	
	method posProhibidas () = [game.at(9,8),game.at(6,11)] + puertas.puertas().map{puerta => puerta.puntoCercano()}
	
	method esColisionado(objeto){
		objeto.inicio()
	}
	
	method estaCerca (jugador) = self.position().distance(jugador.position()) < 5
	
	method mejorDireccion(jugador) = direcciones.min{direccion => direccion.mover(position).distance(jugador.position()) }
	
	method moverHaciaJugador(){
		var jugador
		jugador = juego.jugadores().filter{jugado =>self.estaCerca(self)}.anyOne()
		if(self.sePuedeMover((self.mejorDireccion(jugador)).mover(position))){
			self.mover(self.mejorDireccion(jugador))
		} else {
			self.mover(direcciones.anyOne())
		}
	}
	
	method moverHacia(){
		if (juego.jugadores().any{jugador => self.estaCerca(jugador)}) {
			self.moverHaciaJugador()
		} else {
			self.mover(direcciones.anyOne())
		}
	}
	
	method sePuedeMover(posicion) = mapa.posPermitidas().contains(posicion) and !self.posProhibidas().contains(posicion) and esferas.posicionOtraEsfera(self)
	
	method mover(direccion){
		if (self.sePuedeMover(direccion.mover(position))) {
			position = direccion.mover(position)
		}
	}	
	
	method inicio(){}
}

object esferas{
	var property esferas = []
	
	method crear(){
		esferas.add(new Esfera(position = game.at(10,16)))
		esferas.add(new Esfera(position = game.at(11,15)))
		esferas.add(new Esfera(position = game.at(12,12)))
		esferas.add(new Esfera(position = game.at(13,11)))
		esferas.add(new Esfera(position = game.at(5,3)))
		esferas.add(new Esfera(position = game.at(4,4)))
		esferas.add(new Esfera(position = game.at(2,8)))
		esferas.add(new Esfera(position = game.at(3,7)))
	}
	
	method mover(){
		esferas.forEach{esfera => esfera.moverHacia()}
	}
	
	method posicionOtraEsfera(esfera){
		var auxiliar 
		var posiciones 
		auxiliar = esferas.copyWithout(esfera)
		posiciones = auxiliar.map{auxiliar => auxiliar.position()}
		return !posiciones.contains(esfera.position())
	}
}
