//
//  ViewController.swift
//  iPesquisa
//
//  Created by Elias Nazareno on 18/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBarPesquisar: UISearchBar!
    @IBOutlet weak var labelLista: UILabel!
    
    
    var arrayObjetos = [ProtocolPesquisarGeral]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchBarPesquisar.delegate = self
        labelLista.text = ""
        
        arrayObjetos.append(PessoaFisica(nome: "Elias", cpf: "029.356.803-08"))
        arrayObjetos.append(PessoaJuridica(nome: "Lothus", cnpj: "20.487.014/0001-99"))
        arrayObjetos.append(Aviao(modelo: "Boing", cidade: "São Luis"))
        arrayObjetos.append(Caneta(marca: "FaberCastel"))
        arrayObjetos.append(Cachorro(nome: "Bob", raca: "ShowShow"))
        
        
    }

    func PesquisaElementos(elemento: String) {
        var arrayPesquisa = [ProtocolPesquisarGeral]()
        for item in arrayObjetos {
            if item.getAllObjects().lowercased().contains(elemento.lowercased()) {
                arrayPesquisa.append(item)
            }
        }
        
        var montaLabelPesquisa = ""
        
        for item in arrayPesquisa {
            montaLabelPesquisa = "\(montaLabelPesquisa)\(item.getFormatado())\n"
        }
        
        labelLista.text = montaLabelPesquisa
    }

}

extension ViewController: UISearchBarDelegate {
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        PesquisaElementos(elemento: searchBarPesquisar.text!)
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        if searchBarPesquisar.text == "" {
            labelLista.text = ""
        }
    }
}
