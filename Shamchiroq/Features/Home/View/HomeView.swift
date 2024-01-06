//
//  HomeView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var navBtnState: NavigationButtonsState
    
    var body: some View {
        NavigationView {
            VStack {
                if navBtnState.selectedBottomTab == 1 {
                    SearchView()
                } else if navBtnState.selectedBottomTab == 2 {
                    WriteBlogView()
                } else if navBtnState.selectedBottomTab == 3 {
                    ProfileView()
                } else {
                    
                    // Top Navigation Bar
                    TopNavigationBarView()
                    
                    // Three Navigation Buttons
                    NavigationButtons()
                    Divider()
                    
                    switch navBtnState.selectedTopTab {
                    case 1:
                        TopKitoblarView()
                    case 2:
                        ArticlesView()
                    default:
                        MashxurlarView()
                    }
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
    HomeView()
}
