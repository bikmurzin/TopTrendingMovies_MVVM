////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: MovieTableCellViewModel.swift
//  Created by: Robert Bikmurzin
//  Date: 10.10.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

class MovieTableCellViewModel {
    var id: Int
    var title: String
    var date: String
    var rating: String
    var imageUrl: URL?
    
    init(movie: Movie) {
        self.id = movie.id
        self.title = movie.title ?? movie.name ?? ""
        self.rating = "\(movie.voteAverage)/10"
        self.date = movie.releaseDate ?? movie.firstAirDate ?? ""
        self.imageUrl = makeImageURL(movie.posterPath ?? "")
    }
    
    private func makeImageURL( _ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
