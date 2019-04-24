import wollok.game.*

object manzana {
	method image() = "manzana.png"
	
	method energia() = 80
	
	method agregarEnLugarRandom(){
		game.addVisualIn(self, game.at(1.randomUpTo(10).truncate(0) ,1.randomUpTo(10).truncate(0) ) )
	}
}

object alpiste {
	method image() = "alpiste.png"
	
	method energia() = 5
	
	method agregarEnLugarRandom(){
		game.addVisualIn(self, game.at(1.randomUpTo(10).truncate(0) ,1.randomUpTo(10).truncate(0) ) )
	}
}


