//
//  Hotel.swift
//  agendaHotel
//
//  Created by Elias Nazareno on 09/10/20.
//

import Foundation

class Hotel{

    var nome: String
    var classificacao: Int
    var valorSemanaClienteNormal: Double
    var valorSemanaClienteEspecial: Double
    var valorFinalSemanaClienteNormal: Double
    var valorFinalSemanaClienteEspecial: Double
    
    init(nome: String, classificacao: Int, valorSemanaClienteNormal: Double, valorSemanaClienteEspecial: Double, valorFinalSemanaClienteNormal: Double, valorFinalSemanaClienteEspecial: Double) {
        self.nome = nome
        self.classificacao = classificacao
        self.valorSemanaClienteNormal = valorSemanaClienteNormal
        self.valorSemanaClienteEspecial = valorSemanaClienteEspecial
        self.valorFinalSemanaClienteNormal = valorFinalSemanaClienteNormal
        self.valorFinalSemanaClienteEspecial = valorFinalSemanaClienteEspecial
    }
}
