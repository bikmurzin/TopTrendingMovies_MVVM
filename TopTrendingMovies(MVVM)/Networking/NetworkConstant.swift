////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: NetworkConstant.swift
//  Created by: Robert Bikmurzin
//  Date: 09.10.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation

// Singletone-Class
// Здесь хранятся все статичные данные для работы с сетью: адреса URL и ключ API
class NetworkConstant {
    
    public static var shared: NetworkConstant = NetworkConstant()
    
    private init() {
        // Singletone
    }
    
    public var apiKey: String {
        get {
            // API key from api.themoviedb.org
            return "b8e3cc0ba5f3a8ffb980b2b82c51ebc1"
        }
    }
    
    public var serverAddress: String {
        get {
            return "https://api.themoviedb.org/3/"
        }
    }
    
    //https://image.tmdb.org/t/p/w500
    public var imageServerAddress: String {
        get {
            return "https://api.themoviedb.org/3/collection/collection_id/images"
        }
    }
}
