//
//  PessoaJuridica.swift
//  iPesquisa
//
//  Created by Elias Nazareno on 18/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

class PessoaJuridica: SerVivo {
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
        
    }
}

extension PessoaJuridica: ProtocolPesquisarGeral {
    func getAllObjects() -> String {
       return "\(nome) \(cnpj)"
    }
    
    func getFormatado () -> String {
       return "Empresa: \(nome) CNPJ: \(cnpj)"
    }
}
