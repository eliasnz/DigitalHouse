//
//  ViewController.swift
//  myTableView
//
//  Created by Elias Nazareno on 25/09/20.
//

import UIKit

class ViewController: UIViewController {
    
    var arrayCar = [Car]()

    @IBOutlet weak var tableViewPrincipal: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayCar.append(Car(nome: "Fiat", modelo: "Palio"))
        arrayCar.append(Car(nome: "Fiat", modelo: "Siena"))
        arrayCar.append(Car(nome: "Chevrolet", modelo: "Corsa"))
        arrayCar.append(Car(nome: "Chevrolet", modelo: "Celta"))
        
        tableViewPrincipal.delegate = self
        tableViewPrincipal.dataSource = self
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let carDetail =  CarDetailViewController.OpenCarDetail() {
            present(carDetail, animated: 	true, completion: nil)
        }
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayCar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        
        cell.textLabel?.text = arrayCar[indexPath.row].modelo
        
        return cell
    }
    
    
}
