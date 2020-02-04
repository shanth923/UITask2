//
//  bottompopNavigation.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit

class bottompopNavigation: NAvigationViewController{
    
    

         var height: CGFloat?
        var topCornerRadius: CGFloat?
        var presentDuration: Double?
        var dismissDuration: Double?
        var shouldDismissInteractivelty: Bool?
   
    
     override func viewDidLoad() {
                    super.viewDidLoad()
//    let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
//
//
        //            let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        //            view.addGestureRecognizer(viewTapGesture)
            }
    
        // Bottom popup attribute variables
        // You can override the desired variable to change appearance
        
        override var popupHeight: CGFloat { return height ?? CGFloat(300) }
        
        override var popupTopCornerRadius: CGFloat { return topCornerRadius ?? CGFloat(10) }
        
        override var popupPresentDuration: Double { return presentDuration ?? 1.0 }
        
        override var popupDismissDuration: Double { return dismissDuration ?? 1.0 }
        
//        override var popupShouldDismissInteractivelty: Bool { return shouldDismissInteractivelty ?? true }
        
        override var popupDimmingViewAlpha: CGFloat { return BottomPopupConstants.kDimmingViewDefaultAlphaValue }
    }
