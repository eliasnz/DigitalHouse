//
//  ViewController.swift
//  cadUsuario
//
//  Created by Elias Nazareno on 14/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

public class Usuario {
    var email: String
    private var pass: String
    
    init(email: String, pass: String) {
        self.email = email
        self.pass  = pass
        
        func getPass() -> String {
            return self.pass
        }
        
        func setPass(pass: String) {
            self.pass = pass
        }
    }
}

class ViewController: UIViewController {
    
    private var arrayUsuario = [Usuario]()
    

    @IBOutlet weak var textViewEmail: UITextField!
    @IBOutlet weak var textViewSenha: UITextField!
    @IBOutlet weak var btnCadastrar: UIButton!
    
    @IBAction func btnCadastrar(_ sender: Any) {
        if verificaCampos() {
            switch btnCadastrar.tag {
            case 1 : //cadastra
                do {
                    if VerificaCadastro(email: textViewEmail.text!) {
                        cadastraUsuario(usuario: textViewEmail.text!, senha: textViewSenha.text!)
                    }
                    
            }
            case 2 ://logar
                do {
                        if VerificaCadastro(email: textViewEmail.text!) {
                            logarUsuario(usuario: textViewEmail.text!, senha: textViewSenha.text!)
                        }
                        
                }
                
            default: break
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnCadastrar.isEnabled = false
        btnCadastrar.tag       = 0
        textViewEmail.delegate = self
        textViewSenha.delegate = self

    }

   public func VerificaCadastro(email: String) -> Bool {
    if arrayUsuario.count != 0 {
          for usuario in arrayUsuario{
            if usuario.email == email {
                exibirAlerta(titulo: "Atenção", mensagem: "Você esta Cadastrado!")
                 return false
               }
           }
      }
     return true
    }
    
    private func cadastraUsuario(usuario: String, senha: String){
        let user = Usuario(email: textViewEmail.text!, pass: textViewSenha.text!)
        arrayUsuario.append(user)
        exibirAlerta(titulo: "Bem Vindo(a)", mensagem: "Agora você esta cadastrado")
    }
    
    private func logarUsuario(usuario: String, senha: String){
        
    }
    
    public func verificaCampos() -> Bool {
        if textViewEmail.text == nil || textViewEmail.text!.isEmpty {
          exibirAlerta(titulo: "Atenção", mensagem: "Campo e-mail vazio!")
        return false
        }
        if textViewSenha.text == nil || textViewSenha.text!.isEmpty {
            exibirAlerta(titulo: "Atenção", mensagem: "Campo senha vazio!")
            return false
        }
    return true
    }
    
    private func exibirAlerta(titulo: String, mensagem: String){
        let alert = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Confirmar"), style: .default, handler: { _ in
        NSLog("The \"OK\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == textViewEmail {
            if textViewEmail.text != ""{
            if VerificaCadastro(email: textViewEmail.text!) {
                btnCadastrar.isEnabled = true
                btnCadastrar.setTitle("CADASTRAR", for: .normal)
                btnCadastrar.tag       = 1
              } else {
                btnCadastrar.isEnabled = true
                btnCadastrar.setTitle("ENTRAR", for: .normal)
                btnCadastrar.tag       = 2
             }
            } else {
                btnCadastrar.isEnabled = false
                btnCadastrar.setTitle("ENTRAR", for: .normal)
                btnCadastrar.tag       = 0
            }
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textViewEmail {
            textViewSenha.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
    
}

