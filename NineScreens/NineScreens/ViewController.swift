//
//  ViewController.swift
//  NineScreens
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func actionButtonMyViewOne(_ sender: Any) {
        if let myViewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
            navigationController?.pushViewController(myViewOne, animated: true)
        }
    }
    
    
    @IBAction func actionButtonMyViewTwo(_ sender: Any) {
        if let myViewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController {
            navigationController?.pushViewController(myViewTwo, animated: true)
        }
    }
    
    
    @IBAction func actionButtonMyViewThree(_ sender: Any) {
        if let myViewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController {
            navigationController?.pushViewController(myViewThree, animated: true)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

