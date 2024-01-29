//
//  DepartureScreen.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 26.01.2024.
//

import UIKit

final class DepartureScreen: UITableViewController, GettingDepartureSchedule {
    var flights = [ScheduleItem]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        TableViewSetting.SettingCellTableView(tableView: tableView.self)
        registerCell()
        getDepartureSchedule()
        _ = CreatorUIElements.createUILabelAPI(view: view.self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: DepartureCell.identifier,
            for: indexPath) as? DepartureCell else {
            return UITableViewCell()
        }
        let model = flights[indexPath.row]
        cell.configureCell(flights: model)
        return cell
    }

    func getDepartureSchedule() {
        let networkService = NetworkService()
        networkService.getDepartureSchedule { [weak self] result in
            switch result {
            case let .success(schedule):
                DispatchQueue.main.async {
                    self?.flights = schedule
                    self?.tableView.reloadData()
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}
