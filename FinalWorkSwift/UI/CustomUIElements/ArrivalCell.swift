//
//  CustomCell.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 27.01.2024.
//

import Foundation
import UIKit

final class ArrivalCell: UITableViewCell {
   
    
    static let identifier = "ArrivalCell"

    var labelThreadNumber: UILabel = {
        let label = UILabel()
        label.text = "Number of Flight"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .natural
        label.numberOfLines = 0
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var labelThreadTitle: UILabel = {
        let label = UILabel()
        label.text = "Title of Flight"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .natural
        label.numberOfLines = 0
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var labelVehicle: UILabel = {
        let label = UILabel()
        label.text = "Vehicle"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .natural
        label.numberOfLines = 0
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    var labelThreadTime: UILabel = {
        let label = UILabel()
        label.text = "Thread Time"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textAlignment = .right
        label.backgroundColor = .clear
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let borderLabel: UILabel = {
        let label = UILabel()
        label.layer.borderColor = UIColor.black.cgColor
        label.layer.borderWidth = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(labelThreadNumber)
        contentView.addSubview(labelThreadTitle)
        contentView.addSubview(labelVehicle)
        contentView.addSubview(labelThreadTime)
        contentView.addSubview(borderLabel)
        setupConstraintsCell()
    }

    private func setupConstraintsCell() {
        NSLayoutConstraint.activate([
            labelThreadNumber.topAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.topAnchor, constant: 10),
            labelThreadNumber.leadingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            labelThreadNumber.trailingAnchor.constraint(equalTo: labelThreadTime.leadingAnchor, constant: -10),
            labelThreadTime.topAnchor.constraint(equalTo: labelThreadNumber.topAnchor),
            labelThreadTime.trailingAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            labelThreadTime.leadingAnchor.constraint(equalTo: labelThreadNumber.trailingAnchor, constant: 10),
            labelThreadTitle.topAnchor.constraint(equalTo: labelThreadNumber.bottomAnchor, constant: 10),
            labelThreadTitle.leadingAnchor.constraint(equalTo: labelThreadNumber.leadingAnchor),
            labelThreadTitle.trailingAnchor.constraint(equalTo: labelThreadTime.trailingAnchor),
            labelVehicle.topAnchor.constraint(equalTo: labelThreadTitle.bottomAnchor, constant: 10),
            labelVehicle.leadingAnchor.constraint(equalTo: labelThreadTitle.leadingAnchor),
            labelVehicle.trailingAnchor.constraint(equalTo: labelThreadTitle.trailingAnchor),
            borderLabel.topAnchor.constraint(equalTo: labelVehicle.bottomAnchor, constant: 10),
            borderLabel.leadingAnchor.constraint(equalTo: labelVehicle.leadingAnchor),
            borderLabel.trailingAnchor.constraint(equalTo: labelVehicle.trailingAnchor),
            borderLabel.heightAnchor.constraint(equalToConstant: 3),
            borderLabel.bottomAnchor.constraint(equalTo: contentView.safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
}

