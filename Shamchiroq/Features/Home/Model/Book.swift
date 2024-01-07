//
//  Kitob.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let image: String
    var ratings: [Rating]?
    var raviews: [Review]?
    
    var averageRating: Double {
        guard let ratings = ratings, !ratings.isEmpty else { return 0.0 }
        
        let totalStars = ratings.reduce(0) { $0 + $1.numOfStars }
        return Double(totalStars) / Double(ratings.count)
    }
    
    mutating func addRating(newRating: Rating) {
        if ratings == nil {
            ratings = [newRating]
        } else {
            ratings?.append(newRating)
        }
    }
    
    mutating func addReview(newReview: Review) {
        if raviews == nil {
            raviews = [newReview]
        } else {
            raviews?.append(newReview)
        }
    }
    
}
