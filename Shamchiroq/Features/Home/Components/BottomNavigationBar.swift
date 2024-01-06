//
//  BottomNavigationBar.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct BottomNavigationBar: View {
    @EnvironmentObject var navBtnState: NavigationButtonsState
    
    var body: some View {
        HStack {
            Button {
                navBtnState.boshSahifa()
            } label: {
                BottomNavigationItemView(imageName: "house", title: "Asosiy")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 0))
            
            Spacer()
            
            Button {
                navBtnState.izlang()
            } label: {
                BottomNavigationItemView(imageName: "magnifyingglass", title: "Izlang")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 1))
            
            Spacer()
            
            Button {
                navBtnState.yozing()
            } label: {
                BottomNavigationItemView(imageName: "plus.circle", title: "Yozing")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 2))
            
            Spacer()
            
            Button {
                navBtnState.profil()
            } label: {
                BottomNavigationItemView(imageName: "person.circle", title: "Profil")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 3))
        }
        .padding()
    }
}

struct BottomNavigationButtonStyle: ButtonStyle {
    var selected: Bool
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(1)
            .foregroundColor(selected ? .blue: .gray)
    }
}

#Preview {
    BottomNavigationBar()
}
