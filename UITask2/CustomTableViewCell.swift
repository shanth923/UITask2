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
    
    var delegate:PlayVideoCellProtocol?
    
    
//        var audioPlayer:AVAudioPlayer = AVAudioPlayer()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell  = collectionView.dequeueReusableCell(withReuseIdentifier: "custom345", for: indexPath)
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
        
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "3456")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
