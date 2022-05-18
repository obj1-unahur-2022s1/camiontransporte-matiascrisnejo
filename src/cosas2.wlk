/*
 * Bien - Revisar solo 2 comentarios
 */
object knightRider {
	
	method peso() = 500
	
	method nivelPeligrosidad() = 10
	
	method bultos() = 1
	
	method sufrirCambio() {}
	
}

object bumblebee {
	var  property esAuto = true
	
	method peso() = 800
	
	method nivelPeligrosidad() = if(esAuto){15}else{30}
	
	method bultos() = 2
	
	method sufrirCambio(){esAuto = false}
	
	
}

object paqueteLadrillos{
	
	var  property cantidadDeLadrillos = 4
	
	method peso() = cantidadDeLadrillos * 2
	
	method nivelPeligrosidad() = 2
	/*Podias usar el between */
	method bultos() = if(cantidadDeLadrillos <= 100){1}else if(cantidadDeLadrillos >100 and cantidadDeLadrillos <= 300){2}else{3}

	method sufrirCambio(){cantidadDeLadrillos += 12}	
}


object arena {
	
	var property peso = 0
	
	method nivelPeligrosidad() = 1
	
	method bultos() = 1
	
	method sufrirCambio(){peso += 20}
	
}

object bateriaAntiarea {
	
	var property tieneMisiles = true
	
	method peso() = if(tieneMisiles){300}else{200}
	
	
	method nivelPeligrosidad() = if(tieneMisiles){100}else{0}
	
	method bultos() = if(not tieneMisiles){1}else{2}
	
	method sufrirCambio(){tieneMisiles = true}

}

object contenedor {
	
	var  cosasAdentro = []
	
	method peso() = 100 + self.sumaTotalCosasAdentro()
	
	method sumaTotalCosasAdentro() = cosasAdentro.sum({c => c.peso()})
	
	/* ojo el max te devuelve el objeto aca te falto llamar al método */
	method nivelPeligrosidad() = 0.max(cosasAdentro.max({c => c.nivelPeligrosidad() }).nivelPeligrosidad())

	method agregarCosa(unaCosa) = cosasAdentro.add(unaCosa)
	
	method bultos() = 1 + cosasAdentro.sum({ c => c.bultos() })
	
	method sufrirCambio() = cosasAdentro.forEach({ c => c.sufrirCambio() })

}

object residuosRadioactivos {
	
	var  property peso = 0
	
	method peso() = peso
	
	method nivelPeligrosidad() = 200
	
	method bultos() = 1
	
	method sufrirCambio(){peso += 15}
	
}

object embalajeSeguridad {
	
	var property cosaAdentro = []
	
	method peso() = cosaAdentro.peso()
	
	method nivelPeligrosidad() = (cosaAdentro.nivelPeligrosidad() / 2)
	
	method bultos() = 2
	
	method sufrirCambio(){}
	
}

