import UIKit

protocol Voador {
  func Voar()
}

class Pato: Voador {
    func Voar() {
        print("Estou voando como um pato")
    }
}

class Aviao: Voador {
    func Voar() {
        print("Estou voando como um avião")
    }
}

class SuperMan: Voador {
    func Voar() {
        print("Estou voando como um campeão")
    }
}

class TorreDeControle {
    private var listaVoadores = [Voador]()
    
    func VoamTodos() {
        for voador in listaVoadores {
            voador.Voar()
        }
    }
    
    func AdicionarVoador(umVoador: Voador) {
        listaVoadores.append(umVoador)
    }
}

let torre = TorreDeControle()
torre.AdicionarVoador(umVoador: Pato())
torre.AdicionarVoador(umVoador: Aviao())
torre.AdicionarVoador(umVoador: SuperMan())
torre.VoamTodos()
