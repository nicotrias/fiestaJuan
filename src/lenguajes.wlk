class Lenguaje {
	
	method anioSalida()
	
	method esModerno()= self.anioSalida() < ( anioActual.anio() - 20 )

}



object wollok inherits Lenguaje{
	override method anioSalida() = 2005
}
object java inherits Lenguaje{
	override method anioSalida() = 1984
}
object python inherits Lenguaje{
	override method anioSalida() = 1998
	
}
object javascript inherits Lenguaje{
	override method anioSalida() = 2015
	
}
object html inherits Lenguaje{
	override method anioSalida() = 2008
	
}

object anioActual{
	var property anio = 2023
	
}