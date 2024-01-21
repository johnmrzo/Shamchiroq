//
//  User.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/7/24.
//

import Foundation

struct User {
    let id = UUID()
    let firstName: String
    let lastName: String
    let username: String
    let email: String
    let image: String
    var read: [Book] = []
    var reading: [Book] = []
    var wantToRead: [Book] = []
}
