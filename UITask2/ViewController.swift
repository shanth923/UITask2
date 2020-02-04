//
//  ViewController.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    
    
            
        override func viewDidLoad() {
            super.viewDidLoad()

            UIView.animate(withDuration: 0.3) {
                
//           button = self.view.frame.size.width / 2
                
                
            }
            
            button.layer.cornerRadius = button.frame.width/2
            button.clipsToBounds = true
            
            
            
//            let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
//            view.addGestureRecognizer(viewTapGesture)
    }
       
    override func viewDidAppear(_ animated: Bool) {
        
        
        super.viewDidAppear(animated)
        
        
        
    }
    
    
        @objc private func dismissKeyboard() {
            view.endEditing(true)
        }
        
      var value = 0
        @IBAction func showNavigationControllerTapped(_ sender: UIButton) {
            
            if ( value == 0){
                button.center = CGPoint(x: 50, y: 300)
                value += 1
                
            }
            
            else if(value == 1)
            {
                button.center = CGPoint(x: 50, y: 800)
                value -= 1
            }
            
            
            

            guard let popupNavController = storyboard?.instantiateViewController(withIdentifier: "customNavController") as? bottompopNavigation else { return }
            present(popupNavController, animated: true, completion: nil)
//
//
//            let popupVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? popupViewController
////                   popupVC.shouldDismissInteractivelty = dismissInteractivelySwitch.isOn
////                   popupVC.popupDelegate = self
//            present(popupVC!, animated: true, completion: nil)
//
            
            
            
            
        }
    }

    extension ViewController: BottomPopupDelegate {
        
        func bottomPopupViewLoaded() {
            print("bottomPopupViewLoaded")
        }
        
        func bottomPopupWillAppear() {
            print("bottomPopupWillAppear")
        }
        
        func bottomPopupDidAppear() {
            print("bottomPopupDidAppear")
        }
        
        func bottomPopupWillDismiss() {
            print("bottomPopupWillDismiss")
        }
        
        func bottomPopupDidDismiss() {
            print("bottomPopupDidDismiss")
        }
        
//        func bottomPopupDismissInteractionPercentChanged(from oldValue: CGFloat, to newValue: CGFloat) {
//            print("bottomPopupDismissInteractionPercentChanged fromValue: \(oldValue) to: \(newValue)")
//        }
    }
