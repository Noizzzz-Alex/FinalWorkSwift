//
//  ArrivalScreenExtension.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 29.01.2024.
//

import Foundation
extension ArrivalScreen: CellRegister{
    func registerCell() {
        tableView.register(ArrivalCell.self, forCellReuseIdentifier: ArrivalCell.identifier)
    }
}
