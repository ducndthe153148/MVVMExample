//
//  BaseCoordinator.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 22/12/2021.
//

class BaseCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    func start() {
        fatalError("Children should implement start.")
    }
    
}
