import UIKit
public class Vendedor {
  var nome: String
  var idade: Int
  var cpf: String
  private var saldoEmConta: Double
  init(nome: String, idade: Int, cpf: String, saldoEmConta: Double){
    self.nome = nome
    self.idade = idade
    self.cpf = cpf
    self.saldoEmConta = saldoEmConta
  }
  public func getValor(tipoDePeca: String) -> Double{
    if tipoDePeca == "TERNO"{
      return 400.0
    } else if tipoDePeca == "VESTIDO"{
      return 900.0
    } else if tipoDePeca == "BONÉ" {
      return 50.0
    } else {
      return 0.0
    }
  }
  public func getsaldoEmConta() -> Double {
    return self.saldoEmConta
  }
  private func setsaldoEmConta(saldoEmConta: Double){
    return self.saldoEmConta = self.saldoEmConta + saldoEmConta
  }
  public func vender(quantidadeDePecas: Int, tipoDePecas: String) -> String{
    if tipoDePecas.uppercased() == "TERNO"{
      if quantidadeDePecas >= 3 {
        let valor: Double = getValor(tipoDePeca: "TERNO") * Double(quantidadeDePecas) - Double(50 * quantidadeDePecas)
        setsaldoEmConta(saldoEmConta: valor)
        return "Você vendeu \(quantidadeDePecas) \(tipoDePecas) totalizando \(valor) com desconde de \(Double(50 * quantidadeDePecas)) e seu saldo atual é: \(getsaldoEmConta())"
      } else {
        let valor: Double = getValor(tipoDePeca: "TERNO") * Double(quantidadeDePecas)
        setsaldoEmConta(saldoEmConta: valor)
        return "Você vendeu \(quantidadeDePecas) \(tipoDePecas) totalizando \(valor) e seu saldo atual é: \(getsaldoEmConta())"
        }
        } // Inicio vestido
    else if tipoDePecas.uppercased() == "VESTIDO"{
      if quantidadeDePecas >= 5 {
        let valor: Double = getValor(tipoDePeca: "VESTIDO") * Double(quantidadeDePecas) - Double(250)
        setsaldoEmConta(saldoEmConta: valor)
        return "Você vendeu \(quantidadeDePecas) \(tipoDePecas) totalizando \(valor) com desconde de \(Double(50 * quantidadeDePecas)) e seu saldo atual é: \(getsaldoEmConta())"
      } else {
        let valor: Double = getValor(tipoDePeca: "VESTIDO") * Double(quantidadeDePecas)
         setsaldoEmConta(saldoEmConta: valor)
        return "Você vendeu \(quantidadeDePecas) \(tipoDePecas) totalizando \(valor) e seu saldo atual é: \(getsaldoEmConta())"
        }
    }
      // Inicio Boné
      else if tipoDePecas.uppercased() == "BONÉ" {
          if quantidadeDePecas > 2 {
          let valor: Double = getValor(tipoDePeca: "BONÉ") * Double(quantidadeDePecas) - Double(getValor(tipoDePeca: "BONÉ"))
          return "Você vendeu \(quantidadeDePecas) \(tipoDePecas) totalizando A\(valor) e ganhou um Boné e seu saldo atual é: \(getsaldoEmConta())"
          } else {
            let valor: Double = getValor(tipoDePeca: "BONÉ") * Double(quantidadeDePecas)
            return "Você vendeu \(quantidadeDePecas) \(tipoDePecas) totalizando \(valor) e seu saldo atual é: \(getsaldoEmConta())"
           }
       }
    else {
      return "Item inválido!"
    }
  }
}
let joao = Vendedor(nome: "João", idade: 30, cpf: "222.222.222 - 22", saldoEmConta: 100.0)
print(joao.vender(quantidadeDePecas: 10, tipoDePecas: "VESTIDO"))
print(joao.vender(quantidadeDePecas: 5, tipoDePecas: "terno"))
