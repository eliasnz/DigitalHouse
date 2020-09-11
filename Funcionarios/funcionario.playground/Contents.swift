import UIKit

class Funcionario {
    var nome: String
    var salario: Float
    var cpf: String
    
    init(nome: String, salario: Float, cpf: String) {
        self.nome = nome
        self.salario = salario
        self.cpf = cpf
    }

    func CalculaBonus() {
        print("O Bonus é: ")
    }
    
}

class Programador: Funcionario {
    var funcionario: Funcionario
    var plataforma: String
    
    init(funcionario: Funcionario, plataforma: String) {
        self.plataforma = plataforma
        self.funcionario = funcionario
        super.init(nome: funcionario.nome, salario: funcionario.salario, cpf: funcionario.cpf)
    }
    
    override func CalculaBonus() {
        super.CalculaBonus()
        print("\(self.nome) \(self.salario * 0.20)")
    }
}

class Designer: Funcionario {
    var funcionario: Funcionario
    var plataforma: String
    
    init(funcionario: Funcionario, plataforma: String) {
        self.plataforma = plataforma
        self.funcionario = funcionario
        super.init(nome: funcionario.nome, salario: funcionario.salario, cpf: funcionario.cpf)
    }
    
    override func CalculaBonus() {
        super.CalculaBonus()
        print("\(self.nome) \(self.salario * 0.15)")
    }
}

let joao = Programador(funcionario: Funcionario(nome: "João", salario: 10000.00, cpf: "001.002.003-04"),
                       plataforma: "iOS")


let maria = Designer(funcionario: Funcionario(nome: "Maria", salario: 8000.00, cpf: "001.002.003-04"),
plataforma: "iOS")

joao.CalculaBonus()
print("\n-------------------------")
maria.CalculaBonus()

