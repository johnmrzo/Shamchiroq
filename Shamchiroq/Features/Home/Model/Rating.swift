//
//  Rating.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/7/24.
//

import Foundation

struct Rating {
    let id = UUID()
    let user: User
    let numOfStars: Int
}
