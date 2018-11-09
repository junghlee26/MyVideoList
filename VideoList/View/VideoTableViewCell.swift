//
//  VideoTableViewCell.swift
//  VIdeoList
//
//  Created by Junghoon Lee on 11/8/18.
//  Copyright © 2018 Junghoon Lee. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    
    var video: Video! {
        didSet {
            updateUI()
        }
    }
    
    func updateUI() {
        thumbnailImageView.image = UIImage(named: video.thumbnailFileName)
        thumbnailImageView.layer.cornerRadius = 8.0
        thumbnailImageView.layer.masksToBounds = true
        
        usernameLabel.text = video.authorName
    }
}
