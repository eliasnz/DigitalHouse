//
//  Programador.swift
//  exercicioSegmentControlAvancado
//
//  Created by Elias Nazareno on 09/10/20.
//

import Foundation

class Programador: Pessoa {
    var funcao: String
    
    init(nome: String, image: String, funcao: String) {
        self.funcao = funcao
        super.init(nome: nome, image: image)
    }
}
