//
//  AirportAPI.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 17/01/2022.
//

import Foundation
import RxSwift
import RxCocoa

protocol AirportAPI {
    
    // Return a observable of AirportResponse (All of list data)
    func fetchAirport () -> Single<AirportResponse>
    
}
