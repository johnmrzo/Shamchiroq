//
//  TopKitobItemView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct TopKitobItemView: View {
    var title: String
    var author: String
    var image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 100, height: 150)
            
            // Title and author of the book
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                
                Text("by \(author)")
                    .font(.subheadline)
                
                Spacer()
                
                // Action button (e.g., Buy)
                Button(action: {
                    // TODO: Handle buy action
                }) {
                    HStack {
                        Image(systemName: "cart")
                        Text("Buy")
                    }
                    .padding(5)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            }
            .padding(.horizontal, 10)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    TopKitobItemView(title: "The Great Book", author: "John Doe", image: "The-Great-Gatsby")
}
