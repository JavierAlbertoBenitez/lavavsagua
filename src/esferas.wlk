import wollok.game.*
import direcciones.*
import mapa.*
import personajes.*

class Esfera{
	var property position
	const jugadores = [azul,rojo]
	const property direcciones = [arriba, abajo, izquierda, derecha]
	const direccionesProhibidas = [game.at(6,11),game.at(9,8), game.at(14,16), game.at(13,6), game.at(1,3), game.at(2,13)]
	
	
	method image() = "assets/esfera.png"
	
	method esColisionado(objeto){
		objeto.inicio()
	}
	
	method tieneJugadoresCercanos(){
		return jugadores.filter{jugador => self.estaCerca(jugador)}
	}
	
	method estaCerca(unJugador){
		return position.distance(unJugador.position()) < 3
	}
	
	method mejorDireccion(unJugador){
		return direcciones.min{direccion => direccion.mover(position).distance(unJugador.position())}
	}
	
	method moverHaciaJugador(){
		var unJugador 
		unJugador = self.tieneJugadoresCercanos().anyOne()
		if (self.estaCerca(unJugador) and self.mejorDireccionPermitida(unJugador)) {
		 	self.mover(self.mejorDireccion(unJugador))
		} else {
			self.mover(direcciones.anyOne())
		}
	}
	

	method mejorDireccionPermitida(unJugador){
		return self.puedeMoverse(self.mejorDireccion(unJugador).mover(position))
	}
	
	method puedeMoverse(posicion){
		return ((mapa.posPermitidas().contains(posicion) and !direccionesProhibidas.contains(posicion)) and esferas.posicionOtraEsfera(self,posicion)) 
	}
	
	method moverHacia(){
		if(!self.tieneJugadoresCercanos().isEmpty()){
			self.moverHaciaJugador()
		} else{
			self.mover(direcciones.anyOne())
		}
	}

	method mover(direccion){
        var nuevaPos
		nuevaPos = direccion.mover(position) 
		if(self.puedeMoverse(nuevaPos)){
		  position = nuevaPos
		  }  else {
		  	self.mover(direcciones.anyOne())
		  }
	}	
	
	method realizarMovimiento(){
		game.onTick(2000,"correr",{self.moverHacia()})
	}
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
		esferas.forEach{esfera => esfera.realizarMovimiento()}
	}
	
	method posicionOtraEsfera(esfera, posicion){
		var auxiliar 
		var posiciones
		auxiliar = self.esferas().copyWithout(self)
		posiciones = auxiliar.map{otraEsfera => otraEsfera.position()}
		return !posiciones.contains(posicion)
	}
}
