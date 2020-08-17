//
//  CurvedModalViewController.swift
//  WekanModalPopup
//
//  Created by Brian on 26/05/20.
//  Copyright © 2020 Wekan. All rights reserved.
//

import UIKit

class CurvedModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGray4
    }
    
    @IBAction func cancelAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
     }

    @IBAction func popupAction(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(identifier: "BottomPopupViewController") ?? BottomPopupViewController()) as BottomPopupViewController
        vc.view.layer.cornerRadius = 30.0
        vc.view.clipsToBounds = true
        self.present(vc, animated: true) {
            vc.alphaBGView.isHidden = false
        }
    }
}
