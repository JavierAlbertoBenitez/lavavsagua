import wollok.game.*
import casillas.*
import pantalla.*



object mapa {
	var property casillasAzules = []
	var property casillasRojas  = []
	var property casTotales = []
	var property posPermitidas = [game.at(9,8),game.at(6,11),game.at(8,8),game.at(7,11)]
	
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
     	casTotales.addAll(casillasRojas)
     	casTotales.addAll(casillasAzules)
     }
   
     method casillas(){
     	self.spawnCasillasAzules()
     	self.spawnCasillasRojas()
        self.casillasTotales()
     	self.casTotales().forEach{casilla => game.addVisual(casilla)}
     }
     
  
     method posicionesPermitidas(){
     	var posiciones = []
     	var posicionesCasillas
     	var posicionesPuertas
     	posicionesCasillas = self.casTotales().map{casilla => casilla.position()}
     	posicionesPuertas = puertas.puertas().map{puerta => puerta.position()} +  puertas.puertas().map{puerta => puerta.puntoCercano()}
     	posiciones = posicionesCasillas + posicionesPuertas
     	posPermitidas.addAll(posiciones) 
     }
     
     method estaVacioRojas(){
     	if(casillasRojas.isEmpty()){
     	   pantalla.cambiarImagen("assets/victoriaLava.png")
     	   game.addVisual(pantalla)
     	}
     }
     
      method estaVacioAzules(){
     	if(casillasAzules.isEmpty()){
     	pantalla.cambiarImagen("assets/victoriaAgua.png")
     	game.addVisual(pantalla)
     	}
     }
}








