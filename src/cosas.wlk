object knightRider {
	
	method peso() = 500
	
	method nivelPeligrosidad() = 10
	
}

object bumblebee {
	var  property esAuto = true
	
	method peso() = 800
	
	method nivelPeligrosidad() = if(esAuto){15}else{30}
	
}

object paqueteLadrillos{
	
	var  property cantidadDeLadrillos = 4
	
	method peso() = cantidadDeLadrillos * 2
	
	method nivelPeligrosidad() = 2
		
}


object arena {
	
	var property peso = 0
	
	method nivelPeligrosidad() = 1
	
}

object bateriaAntiarea {
	
	var property tieneMisiles = true
	
	method peso() = if(tieneMisiles){300}else{200}
	
	
	method nivelPeligrosidad() = if(tieneMisiles){100}else{0}
	
}

object contenedor {
	
	var  cosasAdentro = []
	
	method peso() = 100 + self.sumaTotalCosasAdentro()
	
	method sumaTotalCosasAdentro() = cosasAdentro.sum({c => c.peso()})
	
	method nivelPeligrosidad() = 0.max((cosasAdentro.max({c => c.nivelPeligrosidad() })).nivelPeligrosidad())

	method agregarCosa(unaCosa) = cosasAdentro.add(unaCosa)
	
}

object residuosRadioactivos {
	
	var  property peso = 0
	
	method peso() = peso
	
	method nivelPeligrosidad() = 200
	
}

object embalajeSeguridad {
	
	var property cosaAdentro = []
	
	method peso() = cosaAdentro.peso()
	
	method nivelPeligrosidad() = (cosaAdentro.nivelPeligrosidad() * 0.5)
	
}




