import wollok.game.*
import mapa.*

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