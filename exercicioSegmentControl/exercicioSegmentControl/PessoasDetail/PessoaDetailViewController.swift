//
//  PessoaDetailViewController.swift
//  exercicioSegmentControl
//
//  Created by Elias Nazareno on 07/10/20.
//

import UIKit

class PessoaDetailViewController: UIViewController {
    
    var nome = ""

    @IBAction func actionButtonClose(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var labelNome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNome.text = nome

    }
    

}
