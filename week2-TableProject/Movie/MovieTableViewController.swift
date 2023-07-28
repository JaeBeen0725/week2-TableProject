//
//  MovieTableViewController.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/28.
//

import UIKit

class MovieTableViewController: UITableViewController {
    let movie = MovieArrayClass()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movie.movieArray.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:MovieTableViewCell.movieidentifire) as! MovieTableViewCell
        
        let row = movie.movieArray[indexPath.row]
        cell.a(row: row)
        
        return cell
    }
    
 
    
}
