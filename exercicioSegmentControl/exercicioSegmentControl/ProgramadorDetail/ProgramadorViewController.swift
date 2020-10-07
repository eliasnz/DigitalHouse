//
//  ProgramadorViewController.swift
//  exercicioSegmentControl
//
//  Created by Elias Nazareno on 07/10/20.
//

import UIKit

class ProgramadorViewController: UIViewController {
    
    var nome = ""
    
    @IBOutlet weak var labelNome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelNome.text = nome

    }
    

}
