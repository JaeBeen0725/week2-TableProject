//
//  Case3TableViewController.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/27.
//

import UIKit



class Case3TableViewController: UITableViewController {

    var showpping = ShowppingArray()
    
    @IBOutlet var addshowppingTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func addShowppingList(_ sender: UIButton) {
       
        guard let text = addshowppingTextField.text else {
            optionalShowAlert()
            return
        }
    
        if text == "" {
            tryAgainShowAlert()
        } else {
           // showpping.list.append()
            tableView.reloadData()
        }
        
      
                
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        showpping.list.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifire) as! CustomTableViewCell
        
        let row = showpping.list[indexPath.row]
        
        cell.check(row: row)
        
      
        
        return cell
        
    }
    
    

}
