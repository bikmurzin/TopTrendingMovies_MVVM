////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: MainViewController.swift
//  Created by: Robert Bikmurzin
//  Date: 09.10.2023
//
//  Status: in progress | Decorated
//
//  */

import UIKit

class MainViewController: UIViewController {
    
    // IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
    }
    
    func configView() {
        title = "Main View"
        view.backgroundColor = .red
        
        setupTableView()
    }
}
