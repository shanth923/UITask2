//
//  CustomTableViewCell.swift
//  UITask2
//
//  Created by Vidushi Duhan on 04/02/20.
//  Copyright © 2020 Vidushi Duhan. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class CustomTableViewCell: UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBAction func details(_ sender: Any) {
    }
    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    var delegate:PlayVideoCellProtocol?
    
    
//        var audioPlayer:AVAudioPlayer = AVAudioPlayer()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "custom345", for: indexPath)
        
        
        cell.contentView.layer.cornerRadius = cell.contentView.frame.width/6
        cell.contentView.clipsToBounds = true
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        

        return CGSize(width: 133, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let itemTag = indexPath.item
        
        self.delegate!.playVideoButtonDidSelect()
               
               
               
               }
           


    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       imageView2.layer.cornerRadius = imageView2.frame.width/2
        imageView2.clipsToBounds = true
        
        label.layer.cornerRadius = label.frame.width/18
        label.clipsToBounds = true
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "1234")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
