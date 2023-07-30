//
//  MusicTableViewController.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/30.
//

import UIKit

class MusicTableViewController: UITableViewController {
let musicArray1 = MusicArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return musicArray1.musicarray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MusicTableViewCell.musicindentifire) as! MusicTableViewCell
        
        let row = musicArray1.musicarray[indexPath.row]
        
        cell.music(row: row)
        
        return cell
    }
    
    
    
}
