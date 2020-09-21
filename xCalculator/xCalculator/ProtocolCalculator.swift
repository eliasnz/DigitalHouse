//
//  ProtocolCalculator.swift
//  xCalculator
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import Foundation

protocol ProtocolCalculator {
    func Somar(primeiroNumero: Float, segundoNumero: Float?) -> Float
    func Subtrair(primeiroNumero: Float, segundoNumero: Float?) -> Float
    func Multiplicar(primeiroNumero: Float, segundoNumero: Float?) -> Float
    func Dividir(primeiroNumero: Float, segundoNumero: Float?) -> Float
    
}
