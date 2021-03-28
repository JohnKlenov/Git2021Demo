//
//  ViewController.swift
//  Lection15 - Alerts
//
//  Created by Evgenyi on 3/16/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title: "Photo Access", message: "Do you alow to use your photos?", preferredStyle: .alert)
        
        let okAtion = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okAtion)
        let canselAction = UIAlertAction(title: "Cansel", style: .default, handler: nil)
        alert.addAction(canselAction)
        present(alert, animated: true, completion: nil)
    }

    
    @IBAction func showActionSheet() {
    }
}

