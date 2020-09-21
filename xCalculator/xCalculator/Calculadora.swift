//
//  Calculadora.swift
//  xCalculator
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

class Calculadora: ProtocolCalculator {

    private var total: Float = 0
    
    func Somar(primeiroNumero: Float, segundoNumero: Float?) -> Float {
        if let numero = segundoNumero {
            total = primeiroNumero + numero
            return total
        }
        return primeiroNumero + total
    }
    
    func Subtrair(primeiroNumero: Float, segundoNumero: Float?) -> Float {
        if let numero = segundoNumero {
            total = primeiroNumero - numero
            return total
        }
        return primeiroNumero - total
    }
    
    func Multiplicar(primeiroNumero: Float, segundoNumero: Float?) -> Float {
        if let numero = segundoNumero {
            total = primeiroNumero * numero
            return total
        }
        total = primeiroNumero * primeiroNumero
        return total
    }
    
    func Dividir(primeiroNumero: Float, segundoNumero: Float?) -> Float {
        if let numero = segundoNumero {
            total = primeiroNumero / numero
            return total
        }
        total = primeiroNumero / primeiroNumero
        return total
    }
    
    
}
