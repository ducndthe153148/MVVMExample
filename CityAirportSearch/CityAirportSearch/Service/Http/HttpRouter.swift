//
//  HttpRouter.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 30/12/2021.
//

import Foundation
import Alamofire

protocol HttpRouter {
    var baseUrlString: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var headers: HTTPHeaders { get }
    var parameters: Parameters? { get }
//    func body() throws Data? 
}
