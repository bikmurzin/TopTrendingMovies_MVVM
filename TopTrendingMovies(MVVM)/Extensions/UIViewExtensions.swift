////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: UIViewExtensions.swift
//  Created by: Robert Bikmurzin
//  Date: 10.10.2023
//
//  Status: in progress | Decorated
//
//  */

import Foundation
import UIKit

extension UIView {
    func round( _ radius: CGFloat = 10) {
        self.layer.cornerRadius = radius
        
        // Если true, то subviews не выходят за границы view
        self.clipsToBounds = true
    }
    
    func addBorder(color: UIColor, width: CGFloat) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
