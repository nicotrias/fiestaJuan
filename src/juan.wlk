import acme.*

object juan {
	const property jefes = #{}
	const property listaInvitados = #{}	
	
	method agregarInvitado(unInvitado){
		listaInvitados.add(unInvitado)
	}
		
		
	method crearListaInvitados(){
		acmeSA.empleados().filter({e => e.puedeIrALaFiesta()}).forEach({e=> self.agregarInvitado(e)})
	}
}
