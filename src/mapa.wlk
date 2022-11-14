import wollok.game.*
import juego.*
import personajes.*

object mapa {
	var property casillasAzules = []
	var property casillasRojas  = []
	var property posProhibidas = []
	
	method spawnCasillasAzules(){
		casillasAzules.add(new CasillaAzul(position = game.at(7,16)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(9+i,16)))}
		casillasAzules.add(new CasillaAzul(position = game.at(7,15)))
		casillasAzules.add(new CasillaAzul(position = game.at(9,15)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(11+i,15)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(3+i,14)))}
		casillasAzules.add(new CasillaAzul(position = game.at(9,14)))
		casillasAzules.add(new CasillaAzul(position = game.at(15,14)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(6+i,13)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(10+i,13)))}
		casillasAzules.add(new CasillaAzul(position = game.at(15,13)))
		3.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(2+i,11)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(8+i,11)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(12+i,11)))}
		casillasAzules.add(new CasillaAzul(position = game.at(1,10)))
		casillasAzules.add(new CasillaAzul(position = game.at(11,10)))
		casillasAzules.add(new CasillaAzul(position = game.at(1,9)))
		casillasAzules.add(new CasillaAzul(position = game.at(11,9)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(2+i,8)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(12+i,8)))}
		casillasAzules.add(new CasillaAzul(position = game.at(1,7)))
		casillasAzules.add(new CasillaAzul(position = game.at(3,7)))
		casillasAzules.add(new CasillaAzul(position = game.at(6,7)))
		casillasAzules.add(new CasillaAzul(position = game.at(10,7)))
		casillasAzules.add(new CasillaAzul(position = game.at(12,7)))
		casillasAzules.add(new CasillaAzul(position = game.at(1,6)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(4+i,6)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(8+i,6)))}
		casillasAzules.add(new CasillaAzul(position = game.at(12,6)))
		casillasAzules.add(new CasillaAzul(position = game.at(4,5)))
		casillasAzules.add(new CasillaAzul(position = game.at(12,5)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(i-1,4)))}
		casillasAzules.add(new CasillaAzul(position = game.at(4,4)))
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(8+i,4)))}
		2.times{i=>casillasAzules.add(new CasillaAzul(position = game.at(5+i,3)))}
		}
	
	method spawnCasillasRojas(){
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(7+i,16)))}
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(4+i,15)))}
		casillasRojas.add(new CasillaRoja(position = game.at(11,15)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(13+i,15)))}
		casillasRojas.add(new CasillaRoja(position = game.at(3,14)))
		casillasRojas.add(new CasillaRoja(position = game.at(11,14)))
		casillasRojas.add(new CasillaRoja(position = game.at(3,13)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(4+i,13)))}
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(8+i,13)))}
		casillasRojas.add(new CasillaRoja(position = game.at(14,13)))
		casillasRojas.add(new CasillaRoja(position = game.at(3,12)))
		casillasRojas.add(new CasillaRoja(position = game.at(5,12)))
		casillasRojas.add(new CasillaRoja(position = game.at(9,12)))
		casillasRojas.add(new CasillaRoja(position = game.at(12,12)))
		casillasRojas.add(new CasillaRoja(position = game.at(14,12)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(i,11)))}
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(10+i,11)))}
		casillasRojas.add(new CasillaRoja(position = game.at(4,10)))
		casillasRojas.add(new CasillaRoja(position = game.at(14,10)))
		casillasRojas.add(new CasillaRoja(position = game.at(4,9)))
		casillasRojas.add(new CasillaRoja(position = game.at(14,9)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(i,8)))}
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(4+i,8)))}
		3.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(9+i,8)))}
		casillasRojas.add(new CasillaRoja(position = game.at(0,6)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(2+i,6)))}
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(6+i,6)))}
		casillasRojas.add(new CasillaRoja(position = game.at(0,5)))
		casillasRojas.add(new CasillaRoja(position = game.at(6,5)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(9+i,5)))}
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(1+i,4)))}
		casillasRojas.add(new CasillaRoja(position = game.at(6,4)))
		casillasRojas.add(new CasillaRoja(position = game.at(8,4)))
		2.times{i=>casillasRojas.add(new CasillaRoja(position = game.at(3+i,3)))}   
		casillasRojas.add(new CasillaRoja(position = game.at(8,3))) 
	 }
     
     method casillasTotales(){
     	return casillasAzules + casillasRojas
     }
     
     method casillas(){
     	self.spawnCasillasAzules()
     	self.spawnCasillasRojas()
     	self.casillasTotales().forEach{casilla => game.addVisual(casilla)}
     }
     
     method posicionesProhibidas(){
     	posProhibidas.add(game.at(14,18))
     	5.times{i=>posProhibidas.add(game.at(6+i,17))}
     	posProhibidas.add(game.at(13,17))
     	posProhibidas.add(game.at(15,17))
     	2.times{i=>posProhibidas.add(game.at(4+i,16))}
     	2.times{i=>posProhibidas.add(game.at(11+i,16))}
     	posProhibidas.add(game.at(15,16))
     	3.times{i=>posProhibidas.add(game.at(16,16-i))}
     	2.times{i => posProhibidas.add(game.at(2+i,15))}
     	posProhibidas.add(game.at(8,15))
     	posProhibidas.add(game.at(10,15))
     	2.times{i => posProhibidas.add(game.at(i,14))}
     	3.times{i => posProhibidas.add(game.at(5+i,14))}
     	posProhibidas.add(game.at(10,14))
     	3.times{i => posProhibidas.add(game.at(11+i,14))}
     	posProhibidas.add(game.at(16,14))
     	7.times{i => posProhibidas.add(game.at(0,14-i))}
     	posProhibidas.add(game.at(4,13))
     	posProhibidas.add(game.at(13,13))
     	2.times{i => posProhibidas.add(game.at(0+i,12))}
     	posProhibidas.add(game.at(4,12))
     	3.times{i => posProhibidas.add(game.at(5+i,12))}
     	2.times{i => posProhibidas.add(game.at(9+i,12))}
     	posProhibidas.add(game.at(13,12))
     	9.times{i => posProhibidas.add(game.at(15,13-i))}
     	posProhibidas.add(game.at(8,11))
     	2.times{i=>2.times{j=>posProhibidas.add(game.at(1+i,11-j))}}
     	6.times{i=>2.times{j=>posProhibidas.add(game.at(4+i,11-j))}}
     	2.times{i=>2.times{j=>posProhibidas.add(game.at(11+i,11-j))}}
     	posProhibidas.add(game.at(7,8))
     	3.times{i=>posProhibidas.add(game.at(2,8-i))}
     	2.times{i => posProhibidas.add(game.at(3+i,7))}
     	3.times{i => posProhibidas.add(game.at(6+i,7))}
     	2.times{i => posProhibidas.add(game.at(11,8-i))}
     	2.times{i => posProhibidas.add(game.at(12+i,7))}
     	3.times{i => posProhibidas.add(game.at(-1,9-i))}
     	posProhibidas.add(game.at(1,5))
     	posProhibidas.add(game.at(3,5))
     	2.times{i => posProhibidas.add(game.at(5,6-i))}
     	2.times{i => posProhibidas.add(game.at(7,6-i))}
     	2.times{i => posProhibidas.add(game.at(7+i,5))}
     	2.times{i => posProhibidas.add(game.at(12+i,5))}
     	2.times{i => posProhibidas.add(game.at(10+i,4))}
     	2.times{i => posProhibidas.add(game.at(0,4-i))}
     	2.times{i => posProhibidas.add(game.at(1+i,3))}
     	2.times{i => posProhibidas.add(game.at(8+i,3))}
     	posProhibidas.add(game.at(2,2))
     	posProhibidas.add(game.at(-1,4))
     	posProhibidas.add(game.at(1,1))
     	5.times{i => posProhibidas.add(game.at(3+i,2))}
     }
}

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
		super()
	}
}

class CasillaAzul inherits Casilla{
	override method image() = "assets/azul.png"
	
	override method  esColisionado(){
		mapa.casillasAzules().remove(self)
		super()
	}
}

object puntosAzul{
	const property position = game.at(2,18)
	method text() = "RESTANTES AZUL: " + mapa.casillasAzules().size().toString()
	method textColor() = paleta.colorAzul()
}

object puntosRojo{
	const property position = game.at(12,18)
	method text() = "RESTANTES ROJO: " + mapa.casillasRojas().size().toString()
	method textColor() = paleta.colorRojo()
}


object paleta{
	const property colorAzul = "#171fb7cc"
	const property colorRojo = "#ca1e11e8"
	const property colorVerde = "#0a4809cc"
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

object imgAbajo{
	method cambiar(jugador){
		jugador.mirarAbajo()
	}
}

object imgArriba{
	method cambiar(jugador){
		jugador.mirarArriba()
	}
}

object imgIzquierda{
	method cambiar(jugador){
		jugador.mirarIzquierda()
	}
}

object imgDerecha{
	method cambiar(jugador){
		jugador.mirarDerecha()
	}
}

object arriba{
	method mover(posicion){
		return posicion.up(1)
	}
}

object abajo{
	method mover(posicion){
		return posicion.down(1)
	}
}

object izquierda{
	method mover(posicion){
		return posicion.left(1)
	}
}

object derecha{
	method mover(posicion){
		return posicion.right(1)
	}
}

object reloj{
	const property position = game.at(7,18)
	var seg = 0
	var min = 0
	method text() = "Tiempo: " + self.formato()
	method textColor() = paleta.colorVerde()
	
	
	method formato(){
		if (seg < 10) {
			return min.toString() + " : 0" + seg.toString()
		} else {
			return min.toString() + " : " + seg.toString()
		}
	}
	
	method iniciar(){
		seg = 0
		min = 0
		game.onTick(1000,"reloj",{self.aumentar()})
	}
	
	method aumentar(){
			if (seg != 59) {
			seg += 1
		} else {
			seg = 0
			min += 1
		}
	}
}





