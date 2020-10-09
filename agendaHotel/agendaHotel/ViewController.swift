//
//  ViewController.swift
//  agendaHotel
//
//  Created by Elias Nazareno on 09/10/20.
//

import UIKit

enum diaSemana {
    static let Sunday = 1
    static let Monday = 2
    static let Tuesday = 3
    static let Wednesday = 4
    static let Thursday = 5
    static let Friday = 6
    static let Saturday = 7
}

class ViewController: UIViewController {
    
    var arrayHotel = [Hotel]()
    
    var resultadoHotel: [String: Double] = [:]
    
    var tipo = "N"
    
    @IBOutlet weak var checkInDate: UIDatePicker!
    
    @IBOutlet weak var checkOutDate: UIDatePicker!
    
    @IBOutlet weak var switchTipoCliente: UISwitch!
    
    @IBOutlet weak var labelResultado: UILabel!
    
    @IBAction func actionButtonBest(_ sender: Any) {
        if switchTipoCliente.isOn {
             tipo = "E"
        } else {
             tipo = "N"
        }
        
        let resultadoHotel = valorHospedagem(dataIni: checkInDate.date, dataFim: checkOutDate.date, tipoCliente: tipo, arrayhotel: arrayHotel)
        
        labelResultado.text = resultadoHotel

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayHotel.append(Hotel(nome: "Parque das Flores", classificacao: 3, valorSemanaClienteNormal: 110, valorSemanaClienteEspecial: 80, valorFinalSemanaClienteNormal: 90, valorFinalSemanaClienteEspecial: 80))
        arrayHotel.append(Hotel(nome: "Jardim Botânico", classificacao: 4, valorSemanaClienteNormal: 160, valorSemanaClienteEspecial: 110, valorFinalSemanaClienteNormal: 60, valorFinalSemanaClienteEspecial: 50))
        arrayHotel.append(Hotel(nome: "Mar Atlântico", classificacao: 5, valorSemanaClienteNormal: 220, valorSemanaClienteEspecial: 100, valorFinalSemanaClienteNormal: 150, valorFinalSemanaClienteEspecial: 40))
        
        
    }

    func valorHospedagem(dataIni: Date, dataFim: Date, tipoCliente: String, arrayhotel: [Hotel]) -> String{
    
        var valorTotal = 0.0
        
     
        for hotel in arrayhotel{
          valorTotal = 0.0
            var mData = dataIni
            while mData <= dataFim {
                let datas = Calendar.current.component(.weekday, from: mData)


                if datas == diaSemana.Saturday || datas == diaSemana.Sunday {
                    if tipoCliente == "N" {
                        valorTotal = valorTotal + hotel.valorFinalSemanaClienteNormal
                    } else {
                        valorTotal = valorTotal + hotel.valorFinalSemanaClienteEspecial
                    }
                } else {
                    if tipoCliente == "N" {
                        valorTotal = valorTotal + hotel.valorSemanaClienteNormal
                    } else {
                        valorTotal = valorTotal + hotel.valorSemanaClienteEspecial
                    }
                }
                mData = Calendar.current.date(byAdding: .day, value: 1, to: mData)!
            }

        
        resultadoHotel[hotel.nome] = valorTotal
        
      }
        
        let hues = resultadoHotel
        let greatestHue = hues.max { a, b in a.value > b.value }
        

        let nomeHotel = greatestHue!.key
        let valorHotel = greatestHue!.value


        return "Hotel: \(nomeHotel) R$: \(valorHotel)"
    }
   
}
