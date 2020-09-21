//
//  Cachorro.swift
//  iPesquisa
//
//  Created by Elias Nazareno on 18/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

class Cachorro: SerVivo {
    var raca: String
    
    init(nome: String, raca: String) {
        self.raca = raca
        super.init(nome: nome)
        
    }
}

extension Cachorro: ProtocolPesquisarGeral {
    func getAllObjects() -> String {
       return "\(nome) \(raca)"
    }
    
    func getFormatado () -> String {
      return "Nick: \(nome) Raça: \(raca)"
    }
}
