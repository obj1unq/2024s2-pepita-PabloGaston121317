object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon{
    var energia = 30
    const gastoAlVolar = 20
    method volar(distancia){
        energia = energia - gastoAlVolar - (distancia * 2)
    }
    method comer(alimento){
        energia = energia + (alimento.energiaQueAporta()/2)
    }
    method energia(){
        return energia
    }

}

object roque{
    var aveActual = pepita
    var cantidadDeCenas = 0
    method cenas(){
        return cantidadDeCenas
    }
    method alimentar(alimento){
        aveActual.comer(alimento)
        cantidadDeCenas = cantidadDeCenas +1
    }
    method entrenarA(ave){
        aveActual = ave
    }
    method aveEnEntrenamiento(){
        return aveActual
    
    }
}