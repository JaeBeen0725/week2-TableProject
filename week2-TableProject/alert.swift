//
//  alert.swift
//  week2-TableProject
//
//  Created by Jae Oh on 2023/07/27.
//

import UIKit

extension UITableViewController {
    
    func tryAgainShowAlert() {
        let alert = UIAlertController(title: "다시 입력하세요", message: "살수 있는것만", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    func optionalShowAlert() {
        let alert = UIAlertController(title: "시스템 오류", message: "관리자에게 문의하세요", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}
