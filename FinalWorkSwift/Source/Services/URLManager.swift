//
//  URLManager.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 26.01.2024.
//

import Foundation
final class URLManager {
    static func createRequestToString(isArrival: Bool) -> String {
        let requestBase = "https://api.rasp.yandex.net/v3.0/schedule/?"
        let apiKey = "apikey=" + DataReader.readTokenFromFile()
        let station = "station=s9600213"
        let date = "date=" + DateManager.getCurrentDateWithFormatYYYYMMDD()
        let transportType = "transport_types=plane"
        let eventArrival = "event=arrival"
        let eventDeparture = "event=departure"
        var request = ""
        if isArrival {
            request = requestBase + "&" + apiKey + "&" + station + "&" + date + "&" + transportType + "&" + eventArrival
        } else {
            request = requestBase + "&" + apiKey + "&" + station + "&" + date + "&" + transportType + "&" + eventDeparture
        }
        return request
    }
}
