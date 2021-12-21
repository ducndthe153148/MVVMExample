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

class SearchCityViewController: UIViewController {

    @IBOutlet weak var roundedView: UIView!
    @IBOutlet weak var searchTextFieal: UITextField!
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: SearchCityViewPresentable! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

