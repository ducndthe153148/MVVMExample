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
        let navigationBar = navigationController.navigationBar
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.barTintColor = UIColor(red: 233.0/255.0, green: 55.0/255.0, blue: 72.0/255.0, alpha: 1.0)
        navigationBar.tintColor = .white
        navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Avenir-Medium", size: 28.0)!, NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationBar.isTranslucent = false
        
        return navigationController
    } ()
    
    init (window: UIWindow) {
        self.window = window
    }
    
    override func start() {
        
        let searchCityCoordinator = SearchCityCoordinator(navigationController: navigationController)
        self.add(coodinator: searchCityCoordinator)
        
        searchCityCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
}
