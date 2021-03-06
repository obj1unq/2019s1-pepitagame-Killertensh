import ciudades.*
import wollok.game.*
import comidas.*

object pepita {
	var property energia = 100
	var property ciudad = buenosAires 
    var property amiga = self.nombre()
	var property position = game.at(3,3)
	method serDadaA(ave){}
	method colisionaCon(persona){}	
	
	
	method image() = if (self.energia() <= 100) "pepita.png"
	                 else "pepita-gorda-raw.png"

	method come(comida) {
		energia +=  comida.energia()
	}
	
	method nombre() = "Pepita"
	
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad.position())
			ciudad = unaCiudad
		}
		else game.say(self, "Ya estoy en")
	}

	method energiaParaVolar(distancia) = 15 + 5 * distancia



	method move(nuevaPosicion) {
		energia -= self.energiaParaVolar(position.distance(nuevaPosicion))
		self.position(nuevaPosicion)
	}



    method nuevaAmiga(ave){
    	if(ave.nombre() != amiga)
    	game.say(self , "Hola " + ave.nombre() + "!")
    	amiga = ave.nombre()
    }

   

}


object pepona{
	var property position = game.at(2,8)
	method image() = "pepona.png"
	method nombre() = "Pepona"
	method colisionaCon(persona){}
	method serDadaA(ave){}
	method pepitaTeCome(){}
	method alimentarAPepita(){}
	
}

object pipa {
	
	var property position = game.at(2,9)
	method image()= "pepitaCanchera.png"
	method nombre() = "Pipa"
	method colisionaCon(persona){}
	method pepitaTeCome(){}
	method alimentarAPepita(){}
}

object roque{
	var property position = game.at(1,1)
	var   comidaActual = null
	
	
	method image() = "jugador.png"
	
	method move(nuevaPosicion){
		self.position(nuevaPosicion)
	}
	
	
	method comidaNueva(comida){
		if (comidaActual != comida){
			game.addVisualIn(comidaActual, game.at(1.randomUpTo(8).truncate(0),1.randomUpTo(8).truncate(0)))
			comidaActual = comida
			game.removeVisual(comida)
		}
	}
	
	method guardarComida(comida){
		if (comidaActual == null){
			
			comidaActual = comida
			game.removeVisual(comida)		      
		}
		else self.comidaNueva(comida)
	}
	
	method pepitaTeCome(){}
	
	
	
	method alimentarAPepita(){
		if(comidaActual != null){
		  pepita.come(comidaActual)
		  game.addVisualIn(comidaActual, game.at(1.randomUpTo(8).truncate(0),1.randomUpTo(8).truncate(0)))
          comidaActual = null	
        }  
          
		else{}
	}
	
	method agregarComidaATablero(comida){
		game.addVisualIn(comida, game.at(1.randomUpTo(8).truncate(0),1.randomUpTo(8).truncate(0)))
	}
	
}






	
