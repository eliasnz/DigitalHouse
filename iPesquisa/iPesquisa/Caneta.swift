//
//  Caneta.swift
//  iPesquisa
//
//  Created by Elias Nazareno on 18/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

class Caneta {
    var marca: String
    
    init(marca: String) {
        self.marca = marca
    }
}

extension Caneta: ProtocolPesquisarGeral {
    func getAllObjects() -> String {
       return "\(marca)"
    }
    
    func getFormatado () -> String {
     return "Marca da Caneta: \(marca)"
    }
}
