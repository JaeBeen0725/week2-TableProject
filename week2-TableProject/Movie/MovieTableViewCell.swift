//
//  MovieTableViewCell.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/28.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    static let movieidentifire = "MovieTableViewCell"
    
    @IBOutlet var movieImageView: UIImageView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieDateLabel: UILabel!
    @IBOutlet var movieRunningTimeLabel: UILabel!
    @IBOutlet var movieGradeLabel: UILabel!
    @IBOutlet var moviesummaryTextView: UITextView!
    
    
    func a(row: movieFoodTray) {
        
        movieImageView.image = row.movieImage
        movieTitleLabel.text = row.movieTitleLabel
        movieDateLabel.text = row.movieDateLabel
        movieRunningTimeLabel.text = row.movieRunningTimeLabel
        movieGradeLabel.text = row.movieGradeLabel
        moviesummaryTextView.text = row.moviesummaryTextView
        
        movieTitleLabel.font = UIFont.boldSystemFont(ofSize: 15)
    }
    
    
}

