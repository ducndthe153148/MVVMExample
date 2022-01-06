//
//  AirportHttpService.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 06/01/2022.
//

import Foundation
import Alamofire

class AirportHttpService: HttpService {
    var sessionManager: Session = Session.default
    
    func request(_ urlRequest: URLRequestConvertible) -> DataRequest {
        return sessionManager.request(urlRequest).validate(statusCode: 200..<400)
    }
    
    
}
