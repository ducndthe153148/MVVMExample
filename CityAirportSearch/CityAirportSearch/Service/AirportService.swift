//
//  AirportService.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 06/01/2022.
//

import Foundation
import RxCocoa
import RxSwift

class AirportService {
    
    private lazy var httpService = AirportHttpService()
    // Tao 1 singleton
    static let shared: AirportService = AirportService()
    
}

extension AirportService: AirportAPI {
    func fetchAirport() -> Single<AirportResponse> {
        return Single<AirportResponse>.create { [httpService] (single) -> Disposable in
            
            do {
                try AirportHttpRouter
                    .getAirports.request(usingHttpService: httpService)
                    .responseJSON { (result) in
                        guard let data = result.data else { return }
                        do {
                            let airports = try JSONDecoder().decode(AirportResponse.self, from: data)
//                            print("Airport: \(airports)")
                            // Ban ra 1 observable
                            single(.success(airports))
                        } catch {
                            
                        }
                    }
            } catch {
                
            }
            
            
            return Disposables.create()
        }
    }
}
