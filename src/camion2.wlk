import cosas.*

object camion {
	var  property carga = []
	const property pesoCamion = 1000
	const property pesoMaximo = 2500
	
	method cargar(cosa){
		carga.add(cosa)
		carga.sufrirCambio()
	}
	
	method descargar(cosa) = carga.remove(cosa)
	
	method todoPesoPar()= carga.all({ c => c.peso()%2 == 0 })
	
	method hayAlgunoQuePesa(peso) = carga.any({ c => c.peso() == peso})
	
	method elDeNivel(nivel) = carga.find({ c => c.nivelPeligrosidad() == nivel })
	
	method pesoTotal() = pesoCamion + carga.sum({c => c.peso()})
	
	method excedidoDePeso() = self.pesoTotal() > pesoMaximo
	
	method objetosQueSuperanPeligrosidad(nivel) = carga.filter({ c => c.nivelPeligrosidad() > nivel })
	
	method objetosMasPeligrososQue(cosa) = carga.filter({ c => c.nivelPeligrosidad() > cosa.nivelPeligrosidad() })
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) = not self.excedidoDePeso() and carga.all({ c => c.nivelPeligrosidad() < nivelMaximoPeligrosidad })
	
	method tieneAlgoQuePesaEntre(min, max) = carga.any({c => ((min < c.peso()) and (c.peso() < max))})
	
	method cosaMasPesada() = carga.max({ c => c.peso() })
	
	method pesos() = carga.map({ c => c.peso() })
	
	method totalBultos() = carga.sum({ c => c.bultos() })
}
