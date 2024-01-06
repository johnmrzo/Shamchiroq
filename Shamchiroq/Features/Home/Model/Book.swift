//
//  Kitob.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import Foundation

struct Book: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var image: String? 
    var rating: Int?
}
