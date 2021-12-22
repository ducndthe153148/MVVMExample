//
//  SearchCityCoordinator.swift
//  CityAirportSearch
//
//  Created by Nguyễn Đình Trung Đức on 22/12/2021.
//

import UIKit

class SearchCityCoordinator: BaseCoordinator {
     
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    override func start() {
        
        let view = SearchCityViewController.instantiate()
        
        view.viewModelBuilder = {
            SearchCityViewModel(input: $0)
        }
        
        navigationController.pushViewController(view, animated: true)
    }
    
}
