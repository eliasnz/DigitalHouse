import UIKit

class Veiculo {
    var cor: String
    var preco: Float
    var quantidadePassageiros: Int
    
    init(cor: String, preco: Float, quantidadePassageiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadePassageiros = quantidadePassageiros
    }
    
    func QuantidadeDeCombustivel (km: Float) {
       print("Metodo generico")
    }
}

class Carro: Veiculo {
    var tamanhoDasRodas: Float
    
    init(veiculo: Veiculo, tamanhoDasRodas: Float) {
        self.tamanhoDasRodas = tamanhoDasRodas
        super.init(cor: veiculo.cor, preco: veiculo.preco, quantidadePassageiros: veiculo.quantidadePassageiros)
        
    }
    
    //override func QuantidadeDeCombustivel(km: Float) {
        //print("\(self.tamanhoDasRodas * Float(quantidadePassageiros) * km) ")
    //}
}

class Aviao: Veiculo {
    var piloto: String
    var companhiaAerea: String
    
    init(veiculo: Veiculo, piloto: String, companhiaAerea: String) {
        self.piloto = piloto
        self.companhiaAerea = companhiaAerea
        super.init(cor: veiculo.cor, preco: veiculo.preco, quantidadePassageiros: veiculo.quantidadePassageiros)
        
    }
    
    override func QuantidadeDeCombustivel(km: Float) {
        print("\(Float(quantidadePassageiros) * km) ")
    }
}

let umCarro = Carro(veiculo: Veiculo(cor: "Azul", preco: 23000.00, quantidadePassageiros: 5),
                    tamanhoDasRodas: 17.00)

umCarro.QuantidadeDeCombustivel(km: 10)

print("----------------------")

let umAviao = Aviao(veiculo: Veiculo(cor: "Verde", preco: 81000.00, quantidadePassageiros: 200),
piloto: "Elias", companhiaAerea: "GOL")

umAviao.QuantidadeDeCombustivel(km: 1000)
