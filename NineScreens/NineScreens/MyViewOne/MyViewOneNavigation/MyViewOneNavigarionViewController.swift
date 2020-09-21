//
//  MyViewOneNavigarionViewController.swift
//  NineScreens
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class MyViewOneNavigarionViewController: UIViewController {

    @IBAction func actionButtonCloseNavigation(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewOneNavigation"

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
