//
//  ExerciseTableViewCell.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/29.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {

   static let exerciseIdentifire = "ExerciseTableViewCell"
    
    @IBOutlet var starImageView: UIImageView!
    @IBOutlet var exerciseTitleLabel: UILabel!
    @IBOutlet var checkBoxButton: UIButton!
    
    @IBAction func chckBoxButtonTapped(_ sender: UIButton) {
      
        checkBoxButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        
       
    }
    
    func value(row: ExerciseCellValue) {
        
        starImageView.image = row.star
        exerciseTitleLabel.text = row.title
        checkBoxButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
        
        checkBoxButton.addTarget(self, action: #selector(chckBoxButtonTapped(_:)), for: .touchUpInside)
    
        
    }
    
    
    
}
