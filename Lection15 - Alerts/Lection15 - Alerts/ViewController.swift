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
        
        enum Films: String {
            case film1 = "Человек Паук"
            case film2 = "Алладин"
            case song = "New Brand"
        }
       
        let alert = UIAlertController(title: nil, message: "Choose Film", preferredStyle: .actionSheet)
        
        let handler: (_ type:Films) -> ((UIAlertAction) -> Void) = { type in
            return { action in print(type.rawValue) }
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
      
        let film1 = UIAlertAction(title: Films.film1.rawValue, style: .default, handler: handler(.film1))
        alert.addAction(film1)
        
        let film2 = UIAlertAction(title: Films.film2.rawValue, style: .default, handler: handler(.film2))
        alert.addAction(film2)
        
        let song = UIAlertAction(title: Films.song.rawValue, style: .default, handler: handler(.song))
        alert.addAction(song)
        present(alert, animated: true, completion: nil)
    }
}

