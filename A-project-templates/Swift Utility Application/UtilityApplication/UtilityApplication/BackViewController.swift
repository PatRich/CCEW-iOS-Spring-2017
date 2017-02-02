//
//  BackViewController.swift
//  UtilityApplication
//
//  Created by Jake Manning on 1/23/17.
//  Copyright © 2017 ccew. All rights reserved.
//

import UIKit

class BackViewController: UIViewController {
    
    weak var delegate: FrontViewController?
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        let options = ["Patrick's cool level": 9001]
        delegate?.backViewControllerDidFinish(self, options: options)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

protocol BackViewControllerDelegate: class {
    func backViewControllerDidFinish (_ sender: BackViewController, options: [String: Any]?)
}
