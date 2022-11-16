import wollok.game.*
import mapa.*
import direcciones.*

class Casilla{
	const property position

	
	
	method image() 
	
	method esColisionado(){
		game.removeVisual(self)
	}

	method inicio(){}
}

class CasillaRoja inherits Casilla{
	override method image() = "assets/rojo.png"
	
	override method  esColisionado(){
		mapa.casillasRojas().remove(self)
		mapa.estaVacioRojas()
		super()
	}
}

class CasillaAzul inherits Casilla{
	override method image() = "assets/azul.png"
	
	override method  esColisionado(){
		mapa.casillasAzules().remove(self)
		mapa.estaVacioAzules()
		super()
		
	}
}

class Puerta{
	const property position
	const property puntoCercano
	const property mirar 
	
	method esColisionado(objeto){
		const resto = puertas.puertas().copyWithout(self)
		const posicionAzar = resto.anyOne()
		objeto.teletransportar(posicionAzar.puntoCercano(),posicionAzar)  
	}
}

object puertas{
	const  property puertas = []
	method crear(){
		puertas.add(new Puerta(position = game.at(14,17),puntoCercano = game.at(14,16), mirar = imgAbajo))
		puertas.add(new Puerta(position = game.at(14,6),puntoCercano = game.at(13,6), mirar= imgIzquierda))
		puertas.add(new Puerta(position = game.at(1,2),puntoCercano = game.at(1,3), mirar = imgArriba))
		puertas.add(new Puerta(position = game.at(1,13),puntoCercano = game.at(2,13), mirar = imgDerecha))
	}
}