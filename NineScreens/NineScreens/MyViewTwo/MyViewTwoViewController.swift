//
//  MyViewTwoViewController.swift
//  NineScreens
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    @IBAction func actionButtonModal(_ sender: Any) {
        if let myViewTwoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
            present(myViewTwoModal, animated: true, completion: nil)
        }
    }
    
    @IBAction func actionButtonNavigation(_ sender: Any) {
        if let myViewTwoNavigation = UIStoryboard(name: "MyViewTwoNavigation", bundle: nil).instantiateInitialViewController() as? MyViewTwoNavigationViewController {
            navigationController?.pushViewController(myViewTwoNavigation, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewTwo"

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
