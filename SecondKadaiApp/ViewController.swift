//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by takashimakenichi on 2020/12/24.
//  Copyright © 2020 takashimakenichi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! SecondViewController
        
        if let sendName = name.text, !sendName.isEmpty {
            secondViewController.name = sendName
            
        } else {
            secondViewController.name = "ゲスト"
        }
        
        
    }
    
    @IBAction func backSegue(_ segue: UIStoryboardSegue) {
        
    }


}

