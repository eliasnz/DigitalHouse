//
//  ViewController.swift
//  MyGesture
//
//  Created by Elias Nazareno on 16/10/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelCount: UILabel!
    
    @IBOutlet weak var viewTapGesture: UIView!
    
    @IBOutlet weak var viewSwipeGesture: UIView!
    
    @IBOutlet weak var viewLogPressGesture: UIView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(add))
        viewTapGesture.addGestureRecognizer(tap)
        
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(add))
        swipe.direction = .left
        viewSwipeGesture.addGestureRecognizer(swipe)
        
        let long = UILongPressGestureRecognizer(target: self, action: #selector(remov))
        long.minimumPressDuration = 0.5
        viewLogPressGesture.addGestureRecognizer(long)
     }
    
        
    @objc func add() {
        count += 1
        updateResult()
        }
    
    @objc func remov(){
        count -= 1
        updateResult()
    }
    
    func updateResult() {
        labelCount.text = "\(count)"
    }
    


}

