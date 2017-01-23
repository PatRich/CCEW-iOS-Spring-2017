//
//  ViewController.swift
//  UtilityApplication
//
//  Created by Jake Manning on 1/23/17.
//  Copyright © 2017 ccew. All rights reserved.
//

import UIKit

class FrontViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destination = segue.destination as? BackViewController, segue.identifier == "Flip" {
            destination.delegate = self
        }
    }
}

extension FrontViewController: BackViewControllerDelegate {
    func backViewControllerDidFinish (_ sender: BackViewController, options: [String: Any]?) {
        self.dismiss(animated: true, completion: nil)
        
        guard let dictionary = options else {
            return
        }
        
        for key in dictionary.keys {
            print(dictionary[key] ?? "Whoops, \(key) wasn't convertible to a String")
        }
    }
}
