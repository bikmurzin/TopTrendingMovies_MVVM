////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: APICaller.swift
//  Created by: Robert Bikmurzin
//  Date: 09.10.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

enum NetworkError: Error {
    case urlError
    case canNotParseData
}

class APICaller {
    static func getTrandingMovies(
        completionHandler: @escaping (_ result: Result<TrendingMovieModel, NetworkError>) -> Void
    ) {
        let urlString = NetworkConstant.shared.serverAddress + "trending/all/day?api_key=" + NetworkConstant.shared.apiKey
        
        guard let url =  URL(string: urlString) else {
            completionHandler(.failure(.urlError))
            return
        }
        
        URLSession.shared.dataTask(with: url) { dataResponse, urlResponse, error in
            if error == nil,
               let data = dataResponse,
               let resultData = try? JSONDecoder().decode(TrendingMovieModel.self, from: data) {
                completionHandler(.success(resultData))
            } else {
                completionHandler(.failure(.canNotParseData))
            }
        }.resume()
    }
}
