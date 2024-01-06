//
//  NavigationButtonsState.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import Foundation

class NavigationButtonsState: ObservableObject {
    @Published var selectedTopTab: Int = 0
    @Published var selectedBottomTab: Int = 0
    
    func mashxurlar() {
        selectedTopTab = 0
    }
    
    func topkitoblar() {
        selectedTopTab = 1
    }
    
    func postlar() {
        selectedTopTab = 2
    }
    
    func boshSahifa() {
        selectedBottomTab = 0
    }
    
    func izlang() {
        selectedBottomTab = 1
    }
    
    func yozing() {
        selectedBottomTab = 2
    }
    
    func profil() {
        selectedBottomTab = 3
    }
}
