//
//  AppCoordinator.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 22/12/2021.
//

import Foundation
import UIKit

// 29:18 vid 2
class AppCoordinator: BaseCoordinator {
    
    private let window: UIWindow
    
    private let navigationController: UINavigationController = {
        let navigationController = UINavigationController()
        return navigationController
    } ()
    
    init (window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
        searchCityCoordinator.start()
        
    }
}
