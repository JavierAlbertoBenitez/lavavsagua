import wollok.game.*

object pantalla{
	var property position = game.origin()
	var property imagen = "assets/inicio.png"
	
	method image() = imagen
	
	method cambiarImagen(nuevaImagen) {
		imagen = nuevaImagen
	}
}

