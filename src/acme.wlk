import empleados.*

object acmeSA {
	const property empleados = #{}

}



object fiesta {
	const registroAsistencia = #{}
	var personasAlMomento = 0
	var balance
	
	method personasAlMomento()= personasAlMomento
	
	method verificarInvitado(invitado){
		if()
			self.error("No está en la lista de invitados")
		else{
			personasAlMomento += 1
			registroAsistencia.add( new Registro(empleado = invitado)  )
			
		}
	}
	
}

class Registro{
	var empleado
	const property numeroLlegada = fiesta.personasAlMomento()
	
	method mesa(){
		if(empleado.tipoDeEmpleado() == jefe){
			return 99
		}
		else{
			return empleado.lenguajesQueSabe().size()
	}
}
	
	

}