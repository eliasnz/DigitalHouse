//
//  CadastroViewController.swift
//  AppClosure
//
//  Created by Elias Nazareno on 19/10/20.
//

import UIKit

class CadastroViewController: UIViewController {
    
    var onComplete: ((_ user: String, _ senha: String) -> Void)?
    
    
    
    @IBOutlet weak var textUser: UITextField!
    
    @IBOutlet weak var textPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func actionConfirmar(_ sender: Any) {
        
  
        let user = textUser.text!
        let pass = textPass.text!
        
        onComplete?(user, pass)

    

        
        
        dismiss(animated: true, completion: nil)
    
    }
    
    static func getController() -> CadastroViewController? {
            if let viewDetail = UIStoryboard(name: "Cadastro", bundle: nil).instantiateInitialViewController() as? CadastroViewController {
                return viewDetail
            }

            return nil
    }
    
    func setCompletion(onComplete: @escaping (_ user: String, _ senha: String) -> Void) {
        
        self.onComplete = onComplete
        
    }

}
