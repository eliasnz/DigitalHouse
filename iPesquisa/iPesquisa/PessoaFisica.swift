//
//  pessoaFisica.swift
//  iPesquisa
//
//  Created by Elias Nazareno on 18/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

class PessoaFisica: SerVivo {
    var cpf: String
    
    init(nome: String, cpf: String) {
        self.cpf = cpf
        super.init(nome: nome)
        
    }
}

extension PessoaFisica: ProtocolPesquisarGeral {
    func getAllObjects() -> String {
       return "\(nome) \(cpf)"
    }
    
    func getFormatado () -> String {
       return "Pessoa: \(nome) CPF: \(cpf)"
    }
}
