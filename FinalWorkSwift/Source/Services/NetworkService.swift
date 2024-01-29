//
//  NetworkService.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 26.01.2024.
//

import Foundation
import UIKit
final class NetworkService{
  private let session = URLSession.shared
  private let requestArrival: URLRequest
  private let requestDeparture: URLRequest

  init() {
    guard let arrivalURL = URL(string: URLManager.createRequestToString(isArrival: true)),
          let departureURL = URL(string: URLManager.createRequestToString(isArrival: false)) else {
      fatalError("Invalid URL")
    }

    requestArrival = URLRequest(url: arrivalURL)
    requestDeparture = URLRequest(url: departureURL)
  }

  func getArrivalSchedule(completion: @escaping (Result<[ScheduleItem], Error>) -> Void) {
    session.dataTask(with: requestArrival) { data, _, error in
      guard let data = data else {
        if let error = error {
          completion(.failure(error))
        } else {
            completion(.failure(Error.self as! Error))
        }
        return
      }

      do {
        let arrival = try JSONDecoder().decode(ScheduleResponse.self, from: data)
        completion(.success(arrival.schedule))
      } catch {
        completion(.failure(error))
      }
    }.resume()
  }

  func getDepartureSchedule(completion: @escaping (Result<[ScheduleItem], Error>) -> Void) {
    session.dataTask(with: requestDeparture) { data, _, error in
      guard let data = data else {
        if let error = error {
          completion(.failure(error))
        } else {
          completion(.failure(Error.self as! Error))
        }
        return
      }

      do {
        let departure = try JSONDecoder().decode(ScheduleResponse.self, from: data)
        completion(.success(departure.schedule))
      } catch {
        completion(.failure(error))
      }
    }.resume()
  }
}
