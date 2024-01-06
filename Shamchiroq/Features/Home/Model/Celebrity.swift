//
//  Mashxurlar.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import Foundation

struct Celebrity: Identifiable {
    var id = UUID()
    var name: String
    var booksRead: Int
    var image: String?
}
