//
//  ViewController.swift
//  tableViewAvancado
//
//  Created by Elias Nazareno on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayDevs = [Devs]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayDevs.append(Devs(nome: "Programador 1", image: "1.jpeg",email: "programador1@hotmail.com"))
        arrayDevs.append(Devs(nome: "Programador 2", image: "2.jpg",email:"programador2@hotmail.com"))
        arrayDevs.append(Devs(nome: "Programador 3", image: "3.jpg",email:"programador3@hotmail.com"))
    }

}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        arrayDevs.remove(at: indexPath.row)
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayDevs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
        
        cell.setup(dev: arrayDevs[indexPath.row])
        
        return cell 
    }
    
    
}
