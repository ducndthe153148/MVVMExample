//
//  SearchCityViewModel.swift
//  CityAirportSearch
//
//  Created by MacOS on 21/12/2021.
//

import RxCocoa
import RxSwift

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
    private let airportService: AirportAPI
    
    private let disposeBag = DisposeBag()
    
    init(input: SearchCityViewPresentable.Input, airportService: AirportAPI){
        self.input = input
        self.output = SearchCityViewModel.output(input: self.input)
        self.airportService = airportService
        self.process()
    }
}

private extension SearchCityViewModel {
    static func output(input: SearchCityViewPresentable.Input) ->
        SearchCityViewPresentable.Output {
            return ()
        }
    
    func process() -> Void {
        
        self.airportService
            .fetchAirport()
            .map({ (airports) in
                print("Airports: \(airports)")
            })
            .subscribe()
            .disposed(by: disposeBag)
        
    }
}
