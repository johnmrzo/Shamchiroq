//
//  Review.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/7/24.
//

import Foundation

struct Review {
    let id = UUID()
    let user: User
    let body: String
    var likes: Int = 0
    
    mutating func liked() {
        likes += 1
    }
    
    mutating func unliked() {
        likes -= 1
    }
}
