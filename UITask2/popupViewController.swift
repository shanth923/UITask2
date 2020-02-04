//
//  popupViewController.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit

class popupViewController: BottomPopupViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
    var comments = ["hai","hello","good"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return comments.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        let cell = tableView3.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CustomTableViewCell
    
        return cell
    }
    
    
    
    @IBOutlet weak var tableView3: UITableView!
    
    var height: CGFloat?
        var topCornerRadius: CGFloat?
        var presentDuration: Double?
        var dismissDuration: Double?
        var shouldDismissInteractivelty: Bool?
        
        @IBAction func dismissButtonTapped(_ sender: UIButton) {
            dismiss(animated: true, completion: nil)
        }
       
    
    @IBAction func commentView(_ sender: Any) {
        
        guard let popupVC = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? popupViewController else { return }
              
               present(popupVC, animated: true, completion: nil)
        
    }
    
    
      override func viewDidLoad() {
                super.viewDidLoad()
let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        
        
        tableView3.register(nib, forCellReuseIdentifier: "abc")
        tableView3.delegate = self
        tableView3.dataSource = self
    //            let viewTapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
    //            view.addGestureRecognizer(viewTapGesture)
        }
    
    
    
        // Bottom popup attribute variables
        // You can override the desired variable to change appearance
        
        override var popupHeight: CGFloat { return height ?? CGFloat(300) }
        
        override var popupTopCornerRadius: CGFloat { return topCornerRadius ?? CGFloat(10) }
        
        override var popupPresentDuration: Double { return presentDuration ?? 1.0 }
        
        override var popupDismissDuration: Double { return dismissDuration ?? 1.0 }
        
        override var popupShouldDismissInteractivelty: Bool { return shouldDismissInteractivelty ?? true }
        
        override var popupDimmingViewAlpha: CGFloat { return BottomPopupConstants.kDimmingViewDefaultAlphaValue }
    }
