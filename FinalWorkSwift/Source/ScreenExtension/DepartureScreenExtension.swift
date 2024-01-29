//
//  DepartureScreenExtension.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 29.01.2024.
//

import Foundation
extension DepartureScreen: CellRegister{
    func registerCell() {
        tableView.register(DepartureCell.self, forCellReuseIdentifier: DepartureCell.identifier)
    }
}
