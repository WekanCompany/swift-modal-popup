//
//  SlideUpViewController.swift
//  WekanModalPopup
//
//  Created by Brian on 26/05/20.
//  Copyright © 2020 Wekan. All rights reserved.
//

import UIKit

class SlideUpViewController: UIViewController {

    var viewTranslation = CGPoint(x: 0, y: 0)
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var collectnView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleDismiss)))
    }
    
    @IBAction func cancelAction(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }

    @IBAction func doneAction(_ sender: Any) {
       dismiss(animated: true, completion: nil)
    }

    @objc func handleDismiss(sender: UIPanGestureRecognizer) {
              // The rest of the code we will write here
           switch sender.state {
           case .changed:
               viewTranslation = sender.translation(in: view)
               UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                   self.view.transform = CGAffineTransform(translationX: 0, y: self.viewTranslation.y)
               })
           case .ended:
               if viewTranslation.y < 200 {
                   UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                       self.view.transform = .identity
                   })
               } else {
                   dismiss(animated: true, completion: nil)
               }
           default:
               break
               
           }
          }
}

extension SlideUpViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CategoryCollectionViewCell
        cell.categoryNameLbl.text = "Category \(indexPath.item)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacing = 20.0
        let visibleItems = 3.0
        let totalWidth = UIScreen.main.bounds.width - CGFloat(spacing * (visibleItems+1.0))
        let itemWidth = totalWidth / CGFloat(visibleItems)
        return CGSize(width: itemWidth, height: itemWidth)
    }
}
