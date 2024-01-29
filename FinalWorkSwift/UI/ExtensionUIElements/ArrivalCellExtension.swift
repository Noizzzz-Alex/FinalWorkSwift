//
//  ArrivalCellExtension.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 29.01.2024.
//

import Foundation
extension ArrivalCell: CellConfigurator{
    
    func configureCell(flights: ScheduleItem) {
        labelThreadNumber.text = flights.thread?.number
        labelThreadTitle.text = flights.thread?.title
        labelVehicle.text = flights.thread?.vehicle ?? "UNKNOWN"
        labelThreadTime.text = DateManager.formatDate(stringDate: flights.arrival ?? "00:00:00+00:00")
    }
}
