//
//  Aviao.swift
//  iPesquisa
//
//  Created by Elias Nazareno on 18/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

class Aviao {
    var modelo: String
    var cidade: String
    
    init(modelo: String, cidade: String) {
        self.modelo = modelo
        self.cidade = cidade
    }
}

extension Aviao: ProtocolPesquisarGeral {
    func getAllObjects() -> String {
       return "\(modelo) \(cidade)"
    }
    
    func getFormatado () -> String {
      return "Modelo do Aviao: \(modelo) cidade de destino: \(cidade)"
    }
}
