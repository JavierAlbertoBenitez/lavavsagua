import wollok.game.*
import mapa.*
import juego.*

class Jugador {
	
	var property position
	const property rival
	var  property mirandoHacia  
	method image() = mirandoHacia
	

	
	method subir() {
		self.mover(position.up(1))
	}
	method bajar() {self.mover(position.down(1))}
	method izquierda() {self.mover(position.left(1))}
	method derecha() {self.mover(position.right(1))}
	
	
	method mover(posicion){
	  if(!mapa.posProhibidas().contains(posicion) and (posicion != rival.position()))
		position = posicion
	}
	
	method teletransportar(posicion,puerta){
		position = posicion
		puerta.mirar().cambiar(self)
	}
	
	method control()

	method mirarAbajo()
	method mirarArriba()
	method mirarDerecha()
	method mirarIzquierda()
	method mirandoHaciaArriba() 
    method mirandoHaciaAbajo() 
    method mirandoHaciaDerecha() 
	method mirandoHaciaIzquierda() 
	
	method colision(objeto){
		objeto.esColisionado()
	}
	
}

object azul inherits Jugador (position = game.at(8,8), rival = rojo, mirandoHacia = "assets/azulDerecha.png") {
	
	override method control(){
		keyboard.up().onPressDo({self.subir()})
		keyboard.down().onPressDo({self.bajar()})
		keyboard.left().onPressDo({self.izquierda()})
		keyboard.right().onPressDo({self.derecha()})
	 }
	 
	override method mirarAbajo(){
	   game.schedule(250,{=> mirandoHacia = "assets/azulAbajo.png" })
	 }
	 
	override method mirarArriba(){
	   game.schedule(250,{=> mirandoHacia = "assets/azulArriba.png" })
	 }
	 
	 override method mirarDerecha(){
	   game.schedule(250,{=> mirandoHacia = "assets/azulDerecha.png" })
	 }
	 
	  override method mirarIzquierda(){
	   game.schedule(250,{=> mirandoHacia = "assets/azulIzquierda.png" })
	 }
	 
	 
	 override method mirandoHaciaArriba() {
	 	game.schedule(150,{=> mirandoHacia = "assets/azulArriba.png" })
	 }
	 
	  override method mirandoHaciaAbajo() {
	 	game.schedule(150,{=> mirandoHacia = "assets/azulAbajo.png" })
	 }
	 
	  override method mirandoHaciaDerecha() {
	 	game.schedule(150,{=> mirandoHacia = "assets/azulDerecha.png" })
	 }
	 
	  override method mirandoHaciaIzquierda() {
	 	game.schedule(150,{=> mirandoHacia = "assets/azulIzquierda.png" })
	 }
	 
	 override method subir(){
	 	mirandoHacia = "assets/caminandoArribaAzul.png"
	 	game.schedule(150,{ => mirandoHacia = "assets/caminandoArribaAzul2.png" self.mirandoHaciaArriba()})
	 	super()
	 }
	 
	  override method bajar(){
	 	mirandoHacia = "assets/caminandoAbajoAzul.png"
	 	game.schedule(150,{ => mirandoHacia = "assets/caminandoAbajoazul2.png" self.mirandoHaciaAbajo()})
	 	super()
	 }
	 
	 override method derecha(){
	 	mirandoHacia = "assets/caminandoDerechaAzul.png"
	 	game.schedule(150,{ => self.mirandoHaciaDerecha()})
	 	super()
	 }
	 
	  override method izquierda(){
	 	mirandoHacia = "assets/caminandoIzquierdaAzul.png"
	 	game.schedule(150,{ => self.mirandoHaciaIzquierda()})
	 	super()
	 }
	 
	 override method mover(posicion){
	 	if (posicion != rojo.position()){
	 		super(posicion)
	 	}
	 }
	 
	  override method colision(objeto){
	 	if (mapa.casillasAzules().contains(objeto)) {
	 		super(objeto)
	 	}
	 }
	 
}

object rojo inherits Jugador (position = game.at(7,11), rival = azul, mirandoHacia = "assets/rojoIzquierda.png") {
	

	
	override method control(){
		keyboard.w().onPressDo({self.subir()})
		keyboard.s().onPressDo({self.bajar()})
		keyboard.a().onPressDo({self.izquierda()})
		keyboard.d().onPressDo({self.derecha()})
	 }
	 
	 override method colision(objeto){
	 	if (mapa.casillasRojas().contains(objeto)) {
	 		super(objeto)
	 	}
	 }
	 
	 override method mirarAbajo(){
	   game.schedule(250,{=> mirandoHacia = "assets/rojoAbajo.png" })
	 }
	 
	override method mirarArriba(){
	   game.schedule(250,{=> mirandoHacia = "assets/rojoArriba.png" })
	 }
	 
	 override method mirarDerecha(){
	   game.schedule(250,{=> mirandoHacia = "assets/rojoDerecha.png" })
	 }
	 
	  override method mirarIzquierda(){
	   game.schedule(250,{=> mirandoHacia = "assets/rojoIzquierda.png" })
	 }
	 
	 
	 override method mirandoHaciaArriba() {
	 	game.schedule(150,{=> mirandoHacia = "assets/rojoArriba.png" })
	 }
	 
	  override method mirandoHaciaAbajo() {
	 	game.schedule(150,{=> mirandoHacia = "assets/rojoAbajo.png" })
	 }
	 
	  override method mirandoHaciaDerecha() {
	 	game.schedule(150,{=> mirandoHacia = "assets/rojoDerecha.png" })
	 }
	 
	  override method mirandoHaciaIzquierda() {
	 	game.schedule(150,{=> mirandoHacia = "assets/rojoIzquierda.png" })
	 }
	 
	 override method subir(){
	 	mirandoHacia = "assets/caminandoArribaRojo.png"
	 	game.schedule(150,{ => mirandoHacia = "assets/caminandoArribaRojo2.png" self.mirandoHaciaArriba()})
	 	super()
	 }
	 
	  override method bajar(){
	 	mirandoHacia = "assets/caminandoAbajoRojo.png"
	 	game.schedule(150,{ => mirandoHacia = "assets/caminandoAbajoRojo2.png" self.mirandoHaciaAbajo()})
	 	super()
	 }
	 
	 override method derecha(){
	 	mirandoHacia = "assets/caminandoDerechaRojo.png"
	 	game.schedule(150,{ => self.mirandoHaciaDerecha()})
	 	super()
	 }
	 
	  override method izquierda(){
	 	mirandoHacia = "assets/caminandoIzquierdaRojo.png"
	 	game.schedule(150,{ => self.mirandoHaciaIzquierda()})
	 	super()
	 }
	 
	 
	 
}


