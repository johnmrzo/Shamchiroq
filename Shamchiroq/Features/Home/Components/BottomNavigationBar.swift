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
                navBtnState.asosiy()
            } label: {
                BottomNavigationItemView(imageName: "house", title: "Asosiy")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 0))
            
            Spacer()
            
            Button {
                navBtnState.kitoblarim()
            } label: {
                BottomNavigationItemView(imageName: "books.vertical.fill", title: "Kitoblarim")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 1))
            
            Spacer()
            
            Button {
                navBtnState.izlang()
            } label: {
                BottomNavigationItemView(imageName: "magnifyingglass", title: "Qidiring")
            }
            .buttonStyle(BottomNavigationButtonStyle(selected: navBtnState.selectedBottomTab == 2))
            
            Spacer()
            
            Button {
                navBtnState.profil()
            } label: {
                BottomNavigationItemView(imageName: "person.circle", title: "Sahifam")
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
