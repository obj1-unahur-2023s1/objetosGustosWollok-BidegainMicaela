import objetos.*
import personas.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		//const elDeMostradorBrilla = true   // implementar
		//const elDeVidrieraBrilla = true   // implementar
		//return elDeMostradorBrilla and elDeVidrieraBrilla
		return objetoEnMostrador.material().brilla() and 
			   objetoEnVidriera.material().brilla()
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() { // completar
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
	}
	
	method tieneAlgoDeColor(color) { // completar
		return objetoEnMostrador.color() == color or
           	   objetoEnVidriera.color() == color
	}

	method puedeOfrecerleAlgoA(persona) { // completar
		return persona.leGusta(objetoEnMostrador) or
           	   persona.leGusta(objetoEnVidriera)
	}
	
	method puedeMejorar() {
		return self.estaDesequilibrado() or self.esMonocromatico()
	}
}