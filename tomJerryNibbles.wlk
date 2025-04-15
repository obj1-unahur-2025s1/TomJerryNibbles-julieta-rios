object tom {
    var ultimoRatonComido = jerry
    var energia = 50
    var distanciaRecorrida = 0
    
    method energia() = energia
    method comer(unRaton) {
        energia = energia + 12 + unRaton.peso()
        ultimoRatonComido = unRaton
    }
    method correr(metros) {
        energia = energia - metros * 0.5
        distanciaRecorrida = distanciaRecorrida + metros
    }

    method velocidadMax() = 5 + energia / 10

    method puedeCazar(distancia) = energia >= distancia / 2

    method cazar(unRaton,unaDistancia) {
        if (self.puedeCazar(unaDistancia)) {
            self.correr(unaDistancia)            
            self.comer(unRaton)
        }
    }
}

object jerry {
    var edad = 2
    method cumplirAnios() { edad = edad + 1}
    method peso() {edad * 20}
}

object nibbles {
    method peso() = 35
}

object remy {
    var peso = 20
    method peso() = peso
    method peso(nuevoPeso) {peso = nuevoPeso}
}