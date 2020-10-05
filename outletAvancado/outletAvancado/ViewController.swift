//
//  ViewController.swift
//  outletAvancado
//
//  Created by Elias Nazareno on 05/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelPrincipal: UILabel?
    
    @IBOutlet weak var buttonPrincipal: UIButton?
    
    @IBOutlet weak var textFieldPrincipal: UITextField?
    
    @IBOutlet weak var labelSecundario: UILabel?
    
    @IBOutlet weak var searchBarPrincipal: UISearchBar?
    
    @IBOutlet weak var imageViewPrincipal: UIImageView?
    
    @IBAction func actionButtonPrincipal(){
       print("SHOW")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

