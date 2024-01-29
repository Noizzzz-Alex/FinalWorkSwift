//
//  DataReader.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 27.01.2024.
//

import Foundation

final class DataReader{
    static func readTokenFromFile()->String{
        var token = ""
        if let fileURL = Bundle.main.url(forResource: "token", withExtension: "txt") {
            do {
                token = try String(contentsOf: fileURL)
            } catch {
                print("Ошибка чтения файла: \(error.localizedDescription)")
            }
        } else {
            print("Файл не найден")
        }
        return token
    }
    
}
