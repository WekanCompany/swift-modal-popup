//
//  CreatePostViewController.swift
//  WekanModalPopup
//
//  Created by Brian on 12/08/20.
//  Copyright © 2020 Wekan. All rights reserved.
//

import UIKit

class CreatePostViewController: UIViewController {

     @IBOutlet weak var alphaBGView: UIView!

     override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
     }
     
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
     }
    
    @IBAction func createAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
     }

}
