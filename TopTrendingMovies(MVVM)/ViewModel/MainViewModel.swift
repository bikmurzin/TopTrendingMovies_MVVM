////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: MainViewModel.swift
//  Created by: Robert Bikmurzin
//  Date: 09.10.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

class MainViewModel {
    
    func numberOfSections() -> Int {
        1
    }
    
    func numberOfRows(in section: Int) -> Int {
        10
    }
    
    func getData() {
        APICaller.getTrandingMovies { result in
            switch result {
            case .success(let data):
                print("Top Trending Counts: \(data.results.count)")
            case .failure(let error):
                print(error)
            }
        }
    }
}
