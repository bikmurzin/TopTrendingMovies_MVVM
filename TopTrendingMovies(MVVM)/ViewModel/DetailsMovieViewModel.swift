////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: DetailsMovieViewModel.swift
//  Created by: Robert Bikmurzin
//  Date: 11.10.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

class DetailsMovieViewModel {
    
    var movie: Movie
    
    var movieImage: URL?
    var movieTitle: String
    var movieDescription: String
    var movieID: Int
    
    init(movie: Movie) {
        self.movie = movie
        
        movieTitle = movie.title ?? movie.name ?? ""
        movieDescription = movie.overview ?? ""
        movieID = movie.id
        movieImage = makeImageURL(movie.backdropPath ?? "")
    }
    
    private func makeImageURL(_ imageCode: String) -> URL? {
        URL(string: "\(NetworkConstant.shared.imageServerAddress)\(imageCode)")
    }
}
