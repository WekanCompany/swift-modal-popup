//
//  ViewController.swift
//  WekanModalPopup
//
//  Created by Brian on 26/05/20.
//  Copyright © 2020 Wekan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    
    @objc func handlePresentView() {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "FilterNavC") else { return }
        vc.modalPresentationStyle = .overCurrentContext
        // Disables that black background swift enables by default when presenting a view controller
        present(vc, animated: true)
    }
    
    @IBAction func nativeModalAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "FilterNavC") else { return }
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func nativeModalFullScreenAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "FilterNavC") else { return }
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func nativeModalCurvedAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "CurvedModalViewController") else { return }
        vc.view.layer.cornerRadius = 30.0
        vc.view.clipsToBounds = true
        self.present(vc, animated: true, completion: nil)
    }
    
    @IBAction func slideUpModalAction(_ sender: Any) {
        guard let vc = self.storyboard?.instantiateViewController(identifier: "SlideUpViewController") else { return }
//        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
        self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)

    }
    
    @IBAction func createPostModalAction(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(identifier: "CreatePostViewController") ?? CreatePostViewController()) as CreatePostViewController
        vc.view.layer.cornerRadius = 20.0
        vc.view.clipsToBounds = true
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true) {
            vc.alphaBGView.isHidden = false
        }
    }
    
    @IBAction func bottomPopupAction(_ sender: Any) {
        let vc = (self.storyboard?.instantiateViewController(identifier: "BottomPopupViewController") ?? BottomPopupViewController()) as BottomPopupViewController
        vc.view.layer.cornerRadius = 30.0
        vc.view.clipsToBounds = true
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true) {
            vc.alphaBGView.isHidden = false
        }
    }
    
}

