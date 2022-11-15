import wollok.game.*
import mapa.*
import direcciones.*
import imagenes.*


class Jugador{
	var property position 
	var imagen 
	const property tipoImagen
	const rival
    
	
	method image() = imagen
	method control()
	
	method esColisionado(objeto){
		objeto.esColisionado()
	}
	
	method mover(posicion){
		if (mapa.posPermitidas().contains(posicion) and (posicion != rival.position())) {
			position = posicion
		}
	}
		
	method irArriba(){
		imagen = tipoImagen.arribaPaso1()
		game.onTick(60,"Arriba paso 2", {imagen = tipoImagen.arribaPaso2() game.removeTickEvent("Arriba paso 2")})
		game.onTick(60,"Mover Arriba", {imagen = tipoImagen.arriba() game.removeTickEvent("Mover Arriba")})
		self.mover(arriba.mover(position))
	}
	
	method irAbajo(){
		imagen = tipoImagen.abajoPaso1()
		game.onTick(60,"Abajo paso 2", {imagen = tipoImagen.abajoPaso2() game.removeTickEvent("Abajo paso 2")})
		game.onTick(60,"Mover Abajo", {imagen = tipoImagen.abajo() game.removeTickEvent("Mover Abajo")})
		self.mover(abajo.mover(position))
	}
	
	
	method irDerecha(){
		imagen = tipoImagen.derechaPaso()
		game.onTick(60,"Derecha", {imagen = tipoImagen.derecha() game.removeTickEvent("Derecha")})
		self.mover(derecha.mover(position))
	}
	
	method irIzquierda(){
		imagen = tipoImagen.izquierdaPaso()
		game.onTick(60,"Izquierda", {imagen = tipoImagen.izquierda() game.removeTickEvent("Izquierda")})
		self.mover(izquierda.mover(position))
	}

	method teletransportar(posicion,puerta){
		position = posicion
		game.schedule(100,{imagen = puerta.mirar().cambiar(self)})
	}
}

object azul inherits Jugador(position = game.at(8,8), imagen = imagenAzul.derecha(), tipoImagen = imagenAzul, rival = rojo){
	override method control(){
		keyboard.up().onPressDo({self.irArriba()})
		keyboard.down().onPressDo({self.irAbajo()})
		keyboard.right().onPressDo({self.irDerecha()})
		keyboard.left().onPressDo({self.irIzquierda()})
	}
	
	override method esColisionado(objeto){
		if (mapa.casillasAzules().contains(objeto)){
			super(objeto)
		}
	}
}

object rojo inherits Jugador(position = game.at(7,11), imagen = imagenRojo.izquierda(), tipoImagen = imagenRojo, rival = azul){
	override method control(){
		keyboard.w().onPressDo({self.irArriba()})
		keyboard.s().onPressDo({self.irAbajo()})
		keyboard.d().onPressDo({self.irDerecha()})
		keyboard.a().onPressDo({self.irIzquierda()})
	}
	
		override method esColisionado(objeto){
		if (mapa.casillasRojas().contains(objeto)){
			super(objeto)
		}
	}
}