//
//  Case3TableViewController.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/27.
//

import UIKit

var showppingList = ["수건", "양말", "핸드폰"]

class Case3TableViewController: UITableViewController {

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
            showppingList.append(text)
            tableView.reloadData()
        }
        
      
                
        
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        showppingList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "showppingList")!
        
        cell.textLabel?.text = showppingList[indexPath.row]
        return cell
        
    }
    
    

}
