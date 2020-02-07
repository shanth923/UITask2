//
//  NavigatViewController.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit
import AVKit

class NavigatViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,PlayVideoCellProtocol {
    @IBOutlet weak var dtails: UIButton!
    
    
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom345", for: indexPath) as! CustomTableViewCell
        cell.backgroundColor = .clear
        
        cell.collectionView.layer.cornerRadius = cell.collectionView.frame.width/13
        cell.contentView.layer.cornerRadius = cell.contentView.frame.width/10
//        cell.contentView.layer.cornerRadius = 5.0
        cell.contentView.layer.borderColor  =  UIColor.clear.cgColor
//        cell.contentView.layer.borderWidth = 5.0
        cell.contentView.layer.shadowOpacity = 0.5
        cell.contentView.layer.shadowColor =  UIColor.systemBlue.cgColor
//        cell.contentView.layer.shadowRadius = 5.0
//        cell.contentView.layer.shadowOffset = CGSize(width:5, height: 5)
        cell.contentView.layer.masksToBounds = true
        
        
        
        cell.delegate = self
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 390
        
        
    }
    func playVideoButtonDidSelect() {
        
      let  path = Bundle.main.path(forResource: "car123", ofType: "mp4")
                         
       let videoURL = URL(string: "http://techslides.com/demos/sample-videos/small.mp4")
        let player = AVPlayer(url: URL(fileURLWithPath: path!))

        let video = AVPlayer(url: videoURL!)
                             
                             let videoPlayer = AVPlayerViewController()
                             
                             videoPlayer.player = player
                   present(videoPlayer, animated: true, completion: nil)
          
        video.play()
       
    
    }
    @IBOutlet weak var tableView4: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        

        tableView4.register(CustomTableViewCell.self, forCellReuseIdentifier: "1234")
        
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
