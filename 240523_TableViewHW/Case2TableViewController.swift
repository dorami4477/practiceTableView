//
//  Case2TableViewController.swift
//  240523_TableViewHW
//
//  Created by 박다현 on 5/23/24.
//

import UIKit

class Case2TableViewController: UITableViewController {
    
    let firstSection = ["공지사항", "실험실", "버전 정보"]
    let secondSection = ["개인/보안", "알림", "채팅", "멀티프로필"]
    let thirdSection = ["고객센터/도움말"]
    
    let sectionTitle = ["전체설정", "개인 설정", "기타"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitle[section]
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return firstSection.count
        }else if section == 1{
            return secondSection.count
        }else if section == 2{
            return thirdSection.count
        }else{
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionCell1")!
        
        if indexPath.section == 0{
            cell.textLabel?.text = "\(firstSection[indexPath.row])"
        }else if indexPath.section == 1{
            cell.textLabel?.text = "\(secondSection[indexPath.row])"
        }else if indexPath.section == 2{
            cell.textLabel?.text = "\(thirdSection[indexPath.row])"
        }else{
            return UITableViewCell()
            
        }
        return cell
        
    }
    
}
