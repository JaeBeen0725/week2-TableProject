//
//  CustomTableViewCell.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifire = "CustomTableViewCell"
    
    @IBOutlet var starImageView: UIImageView!
    @IBOutlet var checkButton: UIButton!
    @IBOutlet var showppingListLabel: UILabel!
    
    
    func check(row: showpping) {
        
        showppingListLabel.text = row.list
        
        if row.image {
            starImageView.image = UIImage(systemName: "heart.square.fill")
        } else {
            starImageView.image = UIImage(systemName: "heart")
        }
        
        if row.check {
            checkButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else {
            checkButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
        }
        
    }
}
