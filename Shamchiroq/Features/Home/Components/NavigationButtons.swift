//
//  NavigationButtons.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct NavigationButtons: View {
    @EnvironmentObject var navBtnState: NavigationButtonsState
    
    var body: some View {
        HStack {
            Spacer()
            
            Button(action: {
                navBtnState.selectedTopTab = 0
            }) {
                NavigationButton(title: "Mashxurlar")
            }
            .buttonStyle(TopNavigationButtonStyle(selected: navBtnState.selectedTopTab == 0))
            
            Spacer()
            
            Button(action: {
                navBtnState.selectedTopTab = 1
            }) {
                NavigationButton(title: "Top Kitoblar")
            }
            .buttonStyle(TopNavigationButtonStyle(selected: navBtnState.selectedTopTab == 1))
            
            Spacer()
            
            Button(action: {
                navBtnState.selectedTopTab = 2
            }) {
                NavigationButton(title: "Postlar")
            }
            .buttonStyle(TopNavigationButtonStyle(selected: navBtnState.selectedTopTab == 2))
            
            Spacer()
        }
        .padding()
    }
}

struct TopNavigationButtonStyle: ButtonStyle {
    var selected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(1)
            .foregroundColor(selected ? .blue: .gray)
    }
}

#Preview {
    NavigationButtons()
}
