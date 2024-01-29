//
//  PlaneData.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 26.01.2024.
//

import Foundation

struct ScheduleResponse: Decodable {
    let schedule: [ScheduleItem]
}

struct Station: Decodable {
    let title: String
}


struct ScheduleItem: Decodable {
  let thread: Thread?
  let arrival: String?
  let departure: String?

  private enum CodingKeys: String, CodingKey {
    case thread
    case arrival
    case departure
  }
}

struct Thread: Decodable {
  let number: String?
  let title: String?
  let vehicle: String?

  private enum CodingKeys: String, CodingKey {
    case number
    case title
    case vehicle
  }
}
