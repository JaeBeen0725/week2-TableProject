//
//  Case2TableViewController.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/27.
//

import UIKit

class Case2TableViewController: UITableViewController {
    let overallSettings = ["공지사항", "실험실", "버전정보"]
    let individualSetting = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let restSetting = ["고객센터/도움말"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "전체설정"
        } else if section == 1 {
            return "개인 설정"
        } else if section == 2{
            return "기타"
        }
        return nil
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return overallSettings.count
        } else if section == 1 {
            return individualSetting.count
        } else if section == 2{
            return restSetting.count
        } else {
            return 0
        }
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "case2")!
        
        cell.backgroundColor = .black
        cell.textLabel?.textColor = .white
        if indexPath.section == 0 {
            cell.textLabel?.text = overallSettings[indexPath.row]
        } else if indexPath.section == 1 {
            cell.textLabel?.text = individualSetting[indexPath.row]
        } else {
            cell.textLabel?.text = restSetting[indexPath.row]
        }
        
        //        if indexPath.row == 0 {
        //            cell.textLabel?.text = overallSettings[indexPath.row]
        //        } else if indexPath.row == 1 {
        //            cell.textLabel?.text = individualSetting[indexPath.row]
        //        } else if indexPath.row == 2{
        //            cell.textLabel?.text = restSetting[indexPath.row]
        //        }
        return cell
    }
    
    
 
}
