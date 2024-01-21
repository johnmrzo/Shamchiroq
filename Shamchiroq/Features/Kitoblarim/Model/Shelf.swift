//
//  Shelf.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/8/24.
//

import Foundation

struct Shelf: Identifiable {
    let id = UUID()
    var name: String
    var books: [Book] = []
}
