/* colores */
object rojo { method esFuerte() { return true } }
object verde { method esFuerte() { return true } }  // completar
object celeste { method esFuerte() { return false } }  // completar
object pardo { method esFuerte() { return false } }  // completar

//Más cosas
object naranja { method esFuerte() { return true } }


/* materiales */
object lino { method brilla() { return false } }
object vidrio { method brilla() { return true } }
// agregar: cobre, madera, cuero
object cobre { method brilla() { return true } }
object madera { method brilla() { return false } }
object cuero { method brilla() { return false } }


/* objetos */
object remera {
	method color() { return rojo }
	method material() { return lino }
	method peso() { return 800 }
}

object pelota {
	method color() { return pardo }  // completar
	method material() { return cuero }  // completar
	method peso() { return 1300 }  // completar
}

object munieco {
	var _peso 
	
	method color() { return celeste }
	method material() { return vidrio }
	method peso() { return _peso }
	method setPeso(peso) { _peso = peso }
}

// agregar biblioteca y placa
object biblioteca {
	method color() { return verde }
	method material() { return madera }
	method peso() { return 8000 }
}

object placa {
  	var _color
	var _peso
  
	method color() { return _color }
	method material() { return cobre }
	method peso() { return _peso }
	method setColor(color) { _color = color }
	method setPeso(peso) { _peso = peso }
}


//Más cosas - Agregar al modelo estos objetos:

object arito {
  	method color() { return celeste }
	method material() { return cobre }
	method peso() { return 180 }
} 

object banquito {
  	var _color = naranja
  
  	method color() { return _color }
	method material() { return madera }
	method peso() { return 1700 }
  	method setColor(color) { _color = color }
}

object cajita {
  	var objetoAdentro
  
 	method color() { return rojo }
	method material() { return cobre }
	method peso() { return 400 + objetoAdentro.peso() }
  
  	method objetoAdentro() { return objetoAdentro }
  	method ponerAdentro(cosa) { objetoAdentro = cosa }
}