import wollok.game.*
import personajes.*

object imgAbajo{
	method cambiar(jugador)= jugador.tipoImagen().abajo()
}

object imgArriba{
	method cambiar(jugador)= jugador.tipoImagen().arriba()
}

object imgIzquierda{
	method cambiar(jugador) = jugador.tipoImagen().izquierda()
}

object imgDerecha{
	method cambiar(jugador) = jugador.tipoImagen().derecha()

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
