//
//  MyViewOneModalViewController.swift
//  NineScreens
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class MyViewOneModalViewController: UIViewController {

    @IBAction func actionButtonCloseModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewOneModal"

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
