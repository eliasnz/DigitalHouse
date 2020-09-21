//
//  MyViewThreeViewController.swift
//  NineScreens
//
//  Created by Elias Nazareno on 21/09/20.
//  Copyright © 2020 Elias Nazareno. All rights reserved.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    @IBAction func actionButtonModal(_ sender: Any) {
        if let myViewThreeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
            present(myViewThreeModal, animated: true, completion: nil)
        }
    }
    
    
    @IBAction func actionButtonNavigation(_ sender: Any) {
        if let myViewThreeNavigation = UIStoryboard(name: "MyViewThreeNavigation", bundle: nil).instantiateInitialViewController() as? MyViewThreeNavigationViewController {
            navigationController?.pushViewController(myViewThreeNavigation, animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MyViewThree"

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
