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
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // ViewModel:
    var viewModel: MainViewModel = MainViewModel()
    
    // variables
    var cellDataSource: [MovieTableCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configView()
        bindViewModel()
    }
    
    
    
    func configView() {
        title = "Main View"
        view.backgroundColor = .systemBackground
        
        setupTableView()
    }
    
    func bindViewModel() {
        viewModel.isLoading.bind { [weak self] isLoading in
            guard let self = self, let isLoading = isLoading else {
                return
            }
            DispatchQueue.main.async {
                if isLoading {
                    self.activityIndicator.startAnimating()
                } else {
                    self.activityIndicator.stopAnimating()
                }
            }
        }
        
        viewModel.cellDataSource.bind { [weak self] movies in
            guard let self = self, let movies = movies else {
                return
            }
            self.cellDataSource = movies
            self.reloadTableView()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        viewModel.getData()
    }
    
    func openDetails(movieId: Int) {
        guard let movie = viewModel.retriveMovie(with: movieId) else {
            return
        }
        let detailsViewModel = DetailsMovieViewModel(movie: movie)
        let detailsController = DetailsMovieViewController(viewModel: detailsViewModel)
        DispatchQueue.main.async {
            self.navigationController?.pushViewController(detailsController, animated: true)
        }
    }
}
