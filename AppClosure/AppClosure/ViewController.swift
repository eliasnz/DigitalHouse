//
//  ViewController.swift
//  AppClosure
//
//  Created by Elias Nazareno on 19/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textUser: UITextField!
    
    @IBOutlet weak var textPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func actionButtonCad(_ sender: Any) {
    
        if let viewCadastro = CadastroViewController.getController() {
            
            viewCadastro.setCompletion { (usuario, senha) in
                self.textUser.text = usuario
                self.textPass.text = senha
            }
            present(viewCadastro, animated: true, completion: nil)
        }
        
    }
    
}

