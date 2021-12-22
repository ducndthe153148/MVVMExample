//
//  Coordinator.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 22/12/2021.
//

protocol Coordinator: class {
    
    var childCoordinator: [Coordinator] {get set}
    
    func start()
}

extension Coordinator {
    func add(coodinator: Coordinator) -> Void {
        childCoordinator.append(coodinator)
    }
    
    func remove(coodinator: Coordinator) -> Void {
        childCoordinator = childCoordinator.filter({ $0 !== coodinator })
    }
}
