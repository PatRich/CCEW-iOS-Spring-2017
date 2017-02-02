//
//  ViewController.swift
//  Debug
//
//  Created by Jake Manning on 2/2/17.
//  Copyright © 2017 ccew. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var upperLabel: UILabel!
    
    @IBAction func makeLowerCase(_ sender: Any) {
        guard lowerCaseString = self.textField.text?.lowercased() else {
            return
        }
        
        upperLabel.text = lowerCaseString
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
    
    
}

