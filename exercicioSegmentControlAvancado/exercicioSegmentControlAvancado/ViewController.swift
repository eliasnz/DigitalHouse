//
//  ViewController.swift
//  exercicioSegmentControlAvancado
//
//  Created by Elias Nazareno on 09/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayPessoas = [Pessoa]()
    var arrayProgramador = [Programador]()
    var arrayLista = [Pessoa]()

    @IBOutlet weak var tableViewPessoas: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPessoas.delegate = self
        tableViewPessoas.dataSource = self
        
        arrayPessoas.append(Pessoa(nome: "Elias", image: "car1.jpg"))
        arrayPessoas.append(Pessoa(nome: "Maria", image: "car1.jpg"))
        arrayPessoas.append(Pessoa(nome: "Pedro", image: "car1.jpg"))
        arrayPessoas.append(Pessoa(nome: "João", image: "car1.jpg"))
        arrayProgramador.append(Programador(nome: "Pedro", image: "car1.jpg", funcao: "iOS Developer"))
        arrayProgramador.append(Programador(nome: "Thiago", image: "car1.jpg", funcao: "Android Developer"))
        arrayProgramador.append(Programador(nome: "Diego", image: "car1.jpg", funcao: "MacOS Developer"))
        arrayProgramador.append(Programador(nome: "Lucas", image: "car1.jpg", funcao: "PHP Developer"))
        arrayProgramador.append(Programador(nome: "Marcos", image: "car1.jpg", funcao: "Java Developer"))
        arrayProgramador.append(Programador(nome: "Daniel", image: "car1.jpg", funcao: "Swift Developer"))
    }


}

extension UIViewController: UITableViewDelegate{
    
}

extension UIViewController: UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}
