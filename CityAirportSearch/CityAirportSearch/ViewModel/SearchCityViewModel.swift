//
//  SearchCityViewModel.swift
//  CityAirportSearch
//
//  Created by MacOS on 21/12/2021.
//

import RxCocoa


protocol SearchCityViewPresentable {
    
    typealias Input = (
        // Dùng Driver thích hợp làm việc với ui
        searchText: Driver<String>, ()
    )
    typealias Output = ()
    typealias ViewModelBuilder = (SearchCityViewPresentable.Input) -> SearchCityViewPresentable
    
    var input: SearchCityViewPresentable.Input {get}
    var output: SearchCityViewPresentable.Output {get}
    
}

class SearchCityViewModel: SearchCityViewPresentable {
    var input: SearchCityViewPresentable.Input
    var output: SearchCityViewPresentable.Output
    
    init(input: SearchCityViewPresentable.Input){
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
    }
}

private extension SearchCityViewModel {
    static func output(input: SearchCityViewPresentable.Input) ->
    SearchCityViewPresentable.Output {
            return ()
    }
}
