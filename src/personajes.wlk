import wollok.game.*
import mapa.*
import direcciones.*


class Jugador {
	var property velocidadAnimacion = 60
	const  property velocidadTeletransportacion = 250
	var property position
	const property rival
	var  property mirandoHacia  
	method image() = mirandoHacia
	
	method subir() {self.mover(arriba.mover(position))}
	method bajar() {self.mover(abajo.mover(position))}
	method irIzquierda() {self.mover(izquierda.mover(position))}
	method irDerecha() {self.mover(derecha.mover(position))}
	
	
	method mover(posicion){
	  if(mapa.posPermitidas().contains(posicion) and (posicion != rival.position()))
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
	
	method inicio()
	
}

object azul inherits Jugador (position = game.at(8,8), rival = rojo, mirandoHacia = "assets/azulDerecha.png") {
	
	override method control(){
		keyboard.up().onPressDo({self.subir()})
		keyboard.down().onPressDo({self.bajar()})
		keyboard.left().onPressDo({self.irIzquierda()})
		keyboard.right().onPressDo({self.irDerecha()})
	 }
	 
	override method mirarAbajo(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/azulAbajo.png" })
	 }
	 
	override method mirarArriba(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/azulArriba.png" })
	 }
	 
	 override method mirarDerecha(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/azulDerecha.png" })
	 }
	 
	  override method mirarIzquierda(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/azulIzquierda.png" })
	 }
	 
	 
	 override method mirandoHaciaArriba() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/azulArriba.png" })
	 }
	 
	  override method mirandoHaciaAbajo() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/azulAbajo.png" })
	 }
	 
	  override method mirandoHaciaDerecha() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/azulDerecha.png" })
	 }
	 
	  override method mirandoHaciaIzquierda() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/azulIzquierda.png" })
	 }
	 
	 override method subir(){
	 	mirandoHacia = "assets/caminandoArribaAzul.png"
	 	game.schedule(velocidadAnimacion,{ => mirandoHacia = "assets/caminandoArribaAzul2.png" self.mirandoHaciaArriba()})
	 	super()
	 }
	 
	  override method bajar(){
	 	mirandoHacia = "assets/caminandoAbajoAzul.png"
	 	game.schedule(velocidadAnimacion,{ => mirandoHacia = "assets/caminandoAbajoazul2.png" self.mirandoHaciaAbajo()})
	 	super()
	 }
	 
	 override method irDerecha(){
	 	mirandoHacia = "assets/caminandoDerechaAzul.png"
	 	game.schedule(velocidadAnimacion,{ => self.mirandoHaciaDerecha()})
	 	super()
	 }
	 
	  override method irIzquierda(){
	 	mirandoHacia = "assets/caminandoIzquierdaAzul.png"
	 	game.schedule(velocidadAnimacion,{ => self.mirandoHaciaIzquierda()})
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
	 
	 override method inicio(){
	 	position = game.at(8,8)
	 	self.mirarDerecha()
	 }
	 
}

object rojo inherits Jugador (position = game.at(7,11), rival = azul, mirandoHacia = "assets/rojoIzquierda.png") {
	

	
	override method control(){
		keyboard.w().onPressDo({self.subir()})
		keyboard.s().onPressDo({self.bajar()})
		keyboard.a().onPressDo({self.irIzquierda()})
		keyboard.d().onPressDo({self.irDerecha()})
	 }
	 
	 override method colision(objeto){
	 	if (mapa.casillasRojas().contains(objeto)) {
	 		super(objeto)
	 	}
	 }
	 
	 override method mirarAbajo(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/rojoAbajo.png" })
	 }
	 
	override method mirarArriba(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/rojoArriba.png" })
	 }
	 
	 override method mirarDerecha(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/rojoDerecha.png" })
	 }
	 
	  override method mirarIzquierda(){
	   game.schedule(velocidadTeletransportacion,{=> mirandoHacia = "assets/rojoIzquierda.png" })
	 }
	 
	 
	 override method mirandoHaciaArriba() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/rojoArriba.png" })
	 }
	 
	  override method mirandoHaciaAbajo() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/rojoAbajo.png" })
	 }
	 
	  override method mirandoHaciaDerecha() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/rojoDerecha.png" })
	 }
	 
	  override method mirandoHaciaIzquierda() {
	 	game.schedule(velocidadAnimacion,{=> mirandoHacia = "assets/rojoIzquierda.png" })
	 }
	 
	 override method subir(){
	 	mirandoHacia = "assets/caminandoArribaRojo.png"
	 	game.schedule(velocidadAnimacion,{ => mirandoHacia = "assets/caminandoArribaRojo2.png" self.mirandoHaciaArriba()})
	 	super()
	 }
	 
	  override method bajar(){
	 	mirandoHacia = "assets/caminandoAbajoRojo.png"
	 	game.schedule(velocidadAnimacion,{ => mirandoHacia = "assets/caminandoAbajoRojo2.png" self.mirandoHaciaAbajo()})
	 	super()
	 }
	 
	 override method irDerecha(){
	 	mirandoHacia = "assets/caminandoDerechaRojo.png"
	 	game.schedule(velocidadAnimacion,{ => self.mirandoHaciaDerecha()})
	 	super()
	 }
	 
	  override method irIzquierda(){
	 	mirandoHacia = "assets/caminandoIzquierdaRojo.png"
	 	game.schedule(velocidadAnimacion,{ => self.mirandoHaciaIzquierda()})
	 	super()
	 }	 
	 
	  override method inicio(){
	 	position = game.at(7,11)
	 	self.mirarIzquierda()
	 }
}


