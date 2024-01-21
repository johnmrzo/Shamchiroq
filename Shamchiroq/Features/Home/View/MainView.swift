//
//  HomeView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var navBtnState: NavigationButtonsState
    
    var body: some View {
        NavigationView {
            VStack {
                if navBtnState.selectedBottomTab == 1 {
                    Kitoblarim()
                } else if navBtnState.selectedBottomTab == 2 {
                    SearchView()
                } else if navBtnState.selectedBottomTab == 3 {
                    ProfileView()
                } else {
                    
                    // Top Navigation Bar
                    TopNavigationBarView()
                        .padding(.bottom, 3)
                    
                    Divider()
                    
                    
                    AsosiyView()
                    
                }
            
                Spacer()
                
                Divider()
                // Bottom Navigation Bar
                BottomNavigationBar()
            }
        }
    }
}

#Preview {
    MainView()
}
