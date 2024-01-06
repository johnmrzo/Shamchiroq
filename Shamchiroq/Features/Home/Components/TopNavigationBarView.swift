//
//  TopNavigationBarView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct TopNavigationBarView: View {
    var body: some View {
        HStack {
            // Title
            Text("Asosiy")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
            
            // Notification Logo on the left
            Button {
                
            } label: {
                Image(systemName: "bell")
                    .imageScale(.large)
                    .padding()
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TopNavigationBarView()
}
