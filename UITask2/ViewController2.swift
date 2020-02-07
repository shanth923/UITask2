//
//  ViewController2.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var imageivew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageivew.layer.cornerRadius = imageivew.frame.width/2
        imageivew.clipsToBounds = true
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
