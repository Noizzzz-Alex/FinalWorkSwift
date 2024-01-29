//
//  CreatorUIElements.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 29.01.2024.
//

import Foundation
import UIKit

class CreatorUIElements {
    static func createUILabelAPI(view: UIView) -> UILabel {
        let label = UILabel()
        label.text = "Данные предоставлены сервисом Яндекс.Расписания http://rasp.yandex.ru/"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        view.bringSubviewToFront(label)
        NSLayoutConstraint.activate([
            label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            label.heightAnchor.constraint(equalToConstant: 70),
        ])
        return label
    }

    
}

