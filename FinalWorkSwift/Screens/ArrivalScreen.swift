//
//  ArrivalScreen.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 26.01.2024.
//

import UIKit

class ArrivalScreen: UITableViewController, GettingArrivalSchedule {
    
    var flights = [ScheduleItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewSetting.SettingCellTableView(tableView: tableView.self)
        registerCell()
        getArrivalSchedule()
        _ = CreatorUIElements.createUILabelAPI(view: view.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: ArrivalCell.identifier,
            for: indexPath) as? ArrivalCell else {
            return UITableViewCell()
        }
        let model = flights[indexPath.row]
        cell.configureCell(flights: model)
        return cell
    }

    func getArrivalSchedule() {
            let networkService = NetworkService()
            networkService.getArrivalSchedule { [weak self] result in
                switch result {
                case .success(let schedule):
                    DispatchQueue.main.async {
                        self?.flights = schedule
                        self?.tableView.reloadData()
                    }
                case .failure(let error):
                    print(error)
                }
            }
        }
    
}
