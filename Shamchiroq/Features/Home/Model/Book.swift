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
    var ratings: [Rating] = []
    var reviews: [Review] = []
    let description: String
    
    var averageRating: Double {
        if !ratings.isEmpty {
            let totalStars = ratings.reduce(0) { $0 + $1.numOfStars }
            return Double(totalStars) / Double(ratings.count)
        }
        return 0.0
    }
    
    mutating func addRating(newRating: Rating) {
        if ratings.isEmpty {
            ratings = [newRating]
        } else {
            ratings.append(newRating)
        }
    }
    
    mutating func addReview(newReview: Review) {
        if reviews.isEmpty {
            reviews = [newReview]
        } else {
            reviews.append(newReview)
        }
    }
    
}
