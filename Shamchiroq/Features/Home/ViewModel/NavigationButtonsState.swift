//
//  NavigationButtonsState.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import Foundation

class NavigationButtonsState: ObservableObject {
    @Published var selectedBottomTab: Int = 0
    @Published var noTopBar: Bool = false
    
    func asosiy() {
        selectedBottomTab = 0
    }
    
    func kitoblarim() {
        selectedBottomTab = 1
    }
    
    func izlang() {
        selectedBottomTab = 2
    }
    
    func profil() {
        selectedBottomTab = 3
    }
}
