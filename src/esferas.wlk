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
	
	method esColisionado(objeto){
		objeto.inicio()
	}
	
	method estaCerca (jugador) = self.position().distance(jugador.position()) < 5
	
	method mejorDireccion(jugador) {
		 return (direcciones.min{direccion => (direccion.mover(position)).distance(jugador.position())})
	}
	
	method moverHaciaJugador(){
		var jugador = juego.jugadores().filter{jugador =>self.estaCerca(jugador)}.anyOne()
		if (self.sePuedeMover(self.mejorDireccion(jugador).mover(position))) {
			position = self.mejorDireccion(jugador).mover(position)
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
	
	method sePuedeMover(posicion) = esferas.posPermitidasEsferas().contains(posicion) and esferas.posicionesOtrasEsferas(self,posicion)
	
	method mover(direccion){
		if (self.sePuedeMover(direccion.mover(position))) {
			position = direccion.mover(position)
		} 
	}
}

object esferas{
	var property esferas = []
	var property posPermitidasEsferas =  []
	
	method crear(){
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
	
	method esferasSinElla(esfera){
		return esferas.copyWithout(esfera)
	}
	
	method otrasPosiciones(esfera){
		return self.esferasSinElla(esfera).map{otraEsfera => otraEsfera.position()}
	}
	
	method posicionesOtrasEsferas(esfera,posicion){
		return !self.otrasPosiciones(esfera).contains(posicion)
	}
	
	method posicionesPermitidasEsferas(){
		posPermitidasEsferas.addAll(mapa.casillasTotales().map{casilla => casilla.position()})
	}
}
