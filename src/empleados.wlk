import lenguajes.*
import juan.*
import lenguajes.*

class Empleado {
	const property lenguajesQueSabe = #{}
	const property anioDeIngreso
	
	method aprenderLenguaje(unLenguaje){
		lenguajesQueSabe.add(unLenguaje)
	}
	
	method tipoDeEmpleado()

	method puedeIrALaFiesta()
}

class Jefe inherits Empleado { 
	const empleadosACargo = #{}
	
	method tomarACargoA(unEmpleado){
		empleadosACargo.add(unEmpleado)
		unEmpleado.jefes().add(self)
	}
	
	override method tipoDeEmpleado()= jefe
	
	override method puedeIrALaFiesta()= not juan.jefes().contains(self) and
	lenguajesQueSabe.any({l => not l.esModerno()}) and (
	empleadosACargo.any({e => e.tipoDeEmpleado()== desarrollador and e.lenguajesQueSabe().any({l => not l.esModerno()}) }) or
	empleadosACargo.any({e => e.tipoDeEmpleado()== infraestructura and e.anioDeIngreso() <= anioActual.anio() - 10 })			)
}

class Desarrollador inherits Empleado {
	const property jefes = #{}
	
	override method tipoDeEmpleado()= desarrollador
	
	override method puedeIrALaFiesta()= lenguajesQueSabe.contains(wollok) or 
								lenguajesQueSabe.any({l => not l.esModerno()})
		
}

class Infraestructura inherits Empleado {
	const jefes = #{}
	
	override method tipoDeEmpleado()= infraestructura
	
	override method puedeIrALaFiesta()= lenguajesQueSabe.size() >= 5
	
}


object jefe {}
object desarrollador {}
object infraestructura {}