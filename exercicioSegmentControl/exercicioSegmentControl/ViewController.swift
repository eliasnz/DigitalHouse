//
//  ViewController.swift
//  exercicioSegmentControl
//
//  Created by Elias Nazareno on 07/10/20.
//

import UIKit

enum TipoSegment {
    static let pessoa = 0
    static let programador = 1
}

class ViewController: UIViewController {

    var arrayPessoas = [Pessoa]()
    var arrayProgramador = [Programador]()
    
    @IBOutlet weak var segmentedControlPessoas: UISegmentedControl!
    
    @IBAction func changedSegmentedControlPessoas(_ sender: Any) {
        tableViewPessoas.reloadData()
    }
    
    @IBOutlet weak var tableViewPessoas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableViewPessoas.delegate = self
        tableViewPessoas.dataSource = self
        
        arrayPessoas.append(Pessoa(nome: "João"))
        arrayPessoas.append(Pessoa(nome: "João"))
        arrayPessoas.append(Pessoa(nome: "João"))
        arrayPessoas.append(Pessoa(nome: "João"))
        
        arrayProgramador.append(Programador(nome: "Pedro"))
        arrayProgramador.append(Programador(nome: "Pedro"))
        arrayProgramador.append(Programador(nome: "Pedro"))
        arrayProgramador.append(Programador(nome: "Pedro"))
        
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            if segmentedControlPessoas.selectedSegmentIndex == TipoSegment.pessoa {
                if let myView = UIStoryboard(name: "PessoaDetail", bundle: nil).instantiateInitialViewController() as? PessoaDetailViewController {
                myView.nome = arrayPessoas[indexPath.row].nome
                present(myView, animated: true, completion: nil)
                }
            } else {
                if let myView = UIStoryboard(name: "Programador", bundle: nil).instantiateInitialViewController() as? ProgramadorViewController {
                myView.nome = arrayProgramador[indexPath.row].nome
                
                navigationController?.pushViewController(myView, animated: true)
                }
            }
        }
    
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentedControlPessoas.selectedSegmentIndex == TipoSegment.pessoa {
            return arrayPessoas.count
        }
        
        return arrayProgramador.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PessoaTableViewCell", for: indexPath) as? PessoaTableViewCell {
            
        if segmentedControlPessoas.selectedSegmentIndex == TipoSegment.pessoa {
                cell.Setup(nome: arrayPessoas[indexPath.row].nome)
                return cell
        } else if segmentedControlPessoas.selectedSegmentIndex == TipoSegment.programador {
            cell.Setup(nome: arrayProgramador[indexPath.row].nome)
            return cell
            }
        
     
    
  }
        return UITableViewCell()

    }
}
