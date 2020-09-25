//
//  CarDetailViewController.swift
//  myTableView
//
//  Created by Elias Nazareno on 25/09/20.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBAction func actionButtonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    static func OpenCarDetail() -> CarDetailViewController? {
        if let carDetail = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
            return carDetail
        }
        return nil
    }

}
