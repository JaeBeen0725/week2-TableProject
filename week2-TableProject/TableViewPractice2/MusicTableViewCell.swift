//
//  MusicTableViewCell.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/30.
//

import UIKit

class MusicTableViewCell: UITableViewCell {
    static let musicindentifire = "MusicTableViewCell"
    
    @IBOutlet var musicImageView: UIImageView!
    @IBOutlet var musicTitleLabel: UILabel!
    @IBOutlet var musicReleasDateLabel: UILabel!
    @IBOutlet var lyricsTextView: UITextView!
//    @IBOutlet var musicPlayButton: UIButton!
    
   // @IBOutlet var fullLyricsButton: UIButton!
    
    func music(row: MusicValue) {
        musicImageView.image = row.image
        musicTitleLabel.text = row.title
        musicReleasDateLabel.text = row.date
        lyricsTextView.text = row.lyrics
        
    }
    
    
}
