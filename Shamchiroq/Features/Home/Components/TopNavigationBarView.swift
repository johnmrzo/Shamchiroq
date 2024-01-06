//
//  TopNavigationBarView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct TopNavigationBarView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 5)
                
                TextField("Kitob qidiring", text: $searchText)
                    .padding(.vertical, 5)
                    .foregroundColor(.black)
                
                // You can add a clear button on the right if needed
                if !searchText.isEmpty {
                    Button(action: {
                        self.searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .padding(.trailing, 5)
                    }
                }
            }
            .background(Color.secondary.opacity(0.1)) // Add a background color if needed
            .cornerRadius(15)
            .padding([.leading, .trailing], 1)
            
            // Notification logo on the right
            Button {
                // TODO: Notifications
            } label: {
                Image(systemName: "bell")
                    .imageScale(.medium)
                    .padding(1)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    TopNavigationBarView()
}
