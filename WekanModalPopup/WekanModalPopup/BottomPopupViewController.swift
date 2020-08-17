//
//  BottomPopupViewController.swift
//  WekanModalPopup
//
//  Created by Brian on 26/05/20.
//  Copyright © 2020 Wekan. All rights reserved.
//

import UIKit

class BottomPopupViewController: UIViewController {
    
    @IBOutlet weak var alphaBGView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   @IBAction func cancelAction(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }

}
