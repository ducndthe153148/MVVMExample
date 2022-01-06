//
//  HttpService.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 06/01/2022.
//

import Foundation
import Alamofire

protocol HttpService {
    var sessionManager: Session {get set}
    func request (_ urlRequest: URLRequestConvertible) -> DataRequest
}
