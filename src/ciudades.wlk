import wollok.game.*
import pepita.*

object villaGesell {
	method image() = "ciudad.png"
	method position() = game.at(8,3)
	
	method nombre() = "Villa Gesell"
	method colisionaCon(persona){}
}

object buenosAires {
	method image() = "ciudad.png"
	method position() = game.at(1,1)
	
	method nombre() = "Buenos Aires"
	
	method colisionaCon(persona){}	
}

