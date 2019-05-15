import wollok.game.*
import pepita.*

class Manzana {
	method image() = "manzana.png"
	
	method energia() = 80
	
	method agregarEnLugarRandom(){
		game.addVisualIn(self, game.at(1.randomUpTo(10).truncate(0) ,1.randomUpTo(10).truncate(0) ) )
	}
	
	method colisionaCon(persona){
		persona.guardarComida(self)
	}
	
	method pepitaTeCome(){
		pepita.come(self)
		game.removeVisual(self)
		
	}
	
	method alimentarAPepita(){
		self.pepitaTeCome()
	}
	
}

class Alpiste {
	method image() = "alpiste.png"
	
	method energia() = 5
	
	method agregarEnLugarRandom(){
		game.addVisualIn(self, game.at(1.randomUpTo(10).truncate(0) ,1.randomUpTo(10).truncate(0) ) )
	}
	
	method colisionaCon(persona){
		persona.guardarComida(self)
	}
	
	method alimentarAPepita(){
		self.pepitaTeCome()
	}
	
	method pepitaTeCome(){
		pepita.come(self)
		game.removeVisual(self)
		
	}
}


