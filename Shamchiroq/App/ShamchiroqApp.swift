//
//  ShamchiroqApp.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

@main
struct ShamchiroqApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(NavigationButtonsState())
                .environmentObject(SampleData())
        }
    }
}
