import wollok.game.*
import personajes.*

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
