//
//  BottomPopupPresentationController.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit

class BottomPopupPresentationController: UIPresentationController {
    private var dimmingView: UIView!
    var button2:UIButton!
        private unowned var attributesDelegate: BottomPopupAttributesDelegate
        
        override var frameOfPresentedViewInContainerView: CGRect {
            get {
                
                presentedViewController.view.layer.cornerRadius = presentedViewController.view.frame.width/8
                presentedViewController.view.clipsToBounds = true
                return CGRect(origin: CGPoint(x: 0, y: 400), size: CGSize(width: presentedViewController.view.frame.size.width*0.9, height: 450))
            }
        }
        
        private func changeDimmingViewAlphaAlongWithAnimation(to alpha: CGFloat) {
            guard let coordinator = presentedViewController.transitionCoordinator else {
                dimmingView.backgroundColor = UIColor.black.withAlphaComponent(alpha)
                return
            }
            
            coordinator.animate(alongsideTransition: { _ in
                self.dimmingView.backgroundColor = UIColor.black.withAlphaComponent(alpha)
            })
        }
        
        init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?, attributesDelegate: BottomPopupAttributesDelegate) {
            self.attributesDelegate = attributesDelegate
            super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
            setupDimmingView()
        }
        
        override func containerViewWillLayoutSubviews() {
            presentedView?.frame = frameOfPresentedViewInContainerView
        }
        
        override func presentationTransitionWillBegin() {
            
            containerView?.insertSubview(dimmingView, at: 0)
            changeDimmingViewAlphaAlongWithAnimation(to: attributesDelegate.popupDimmingViewAlpha)
            
        
            
        }
    
    
    
        
//        override func dismissalTransitionWillBegin() {
//            changeDimmingViewAlphaAlongWithAnimation(to: 0)
//        }
        
//        @objc private func handleTap(_ tap: UITapGestureRecognizer) {
//            guard attributesDelegate.popupShouldBeganDismiss else { return }
//            presentedViewController.dismiss(animated: true, completion: nil)
//        }
//
//        @objc private func handleSwipe(_ swipe: UISwipeGestureRecognizer) {
//            guard attributesDelegate.popupShouldBeganDismiss else { return }
//            presentedViewController.dismiss(animated: true, completion: nil)
//        }
    }

    private extension BottomPopupPresentationController {
        func setupDimmingView() {
            dimmingView = UIView()
            dimmingView.frame = CGRect(origin: .zero, size: UIScreen.main.bounds.size)
            dimmingView.backgroundColor = UIColor.black.withAlphaComponent(0)
            dimmingView.isUserInteractionEnabled = true
            
            button2 = UIButton()
            button2.frame = CGRect(x: 10, y: 200, width: 50, height: 50)
            button2.backgroundColor = .red
            button2.isUserInteractionEnabled = true
   
//            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
//            let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(handleSwipe(_:)))
//            swipeGesture.direction = [.down, .up]
           
//            [tapGesture, swipeGesture].forEach { dimmingView.addGestureRecognizer($0) }
        }
    }


