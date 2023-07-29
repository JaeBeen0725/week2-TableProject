//
//  ExerciseTableViewController.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/29.
//

import UIKit

class ExerciseTableViewController: UITableViewController {
    let exercisetableview = ExerciseArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exercisetableview.exerciseArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ExerciseTableViewCell.exerciseIdentifire) as! ExerciseTableViewCell
        
        let row = exercisetableview.exerciseArray[indexPath.row]
        cell.checkBoxButton.tag = indexPath.row
        cell.value(row: row)
        
       
        
        return cell
    }
    
}
