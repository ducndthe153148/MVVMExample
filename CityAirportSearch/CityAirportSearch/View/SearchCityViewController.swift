//
//  ViewController.swift
//  CityAirportSearch
//
//  Created by MacOS on 21/12/2021.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

class SearchCityViewController: UIViewController, Storyboardable {

    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var searchTextFieal: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel: SearchCityViewPresentable!
    var viewModelBuilder: SearchCityViewPresentable.ViewModelBuilder!
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel = viewModelBuilder((
            searchText: searchTextFieal.rx.text.orEmpty.asDriver(), ()
        ))
    }

    
}

