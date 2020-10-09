//
//  protocolHotel.swift
//  agendaHotel
//
//  Created by Elias Nazareno on 09/10/20.
//

import Foundation

protocol HotelProtocol {
    func valorHospedagem(dataIni: Data, dataFim: Data,tipoCliente: String) -> Double
}
