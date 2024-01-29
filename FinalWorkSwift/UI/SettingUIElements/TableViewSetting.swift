//
//  TableViewSetting.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 28.01.2024.
//

import Foundation
import UIKit

class TableViewSetting{
    static func SettingCellTableView(tableView: UITableView){
        tableView.register(ArrivalCell.self, forCellReuseIdentifier: ArrivalCell.identifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
    }
    static func AddedFixedLabel(view: UIView) -> UILabel{
        var fixedLabel = UILabel()
        
        fixedLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50))
        fixedLabel.text = "Фиксированный лейбл"
        fixedLabel.textAlignment = .center
        fixedLabel.backgroundColor = .yellow
        

        return fixedLabel
    }
}
