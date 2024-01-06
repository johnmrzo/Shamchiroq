//
//  MashxurlarItemView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct CelebrityItemView: View {
    var name: String
    var booksRead: Int
    var image: String
    
    var body: some View {
        HStack {
            // Circle for person's image
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            
            // Name and number of books read
            VStack(alignment: .leading) {
                Text(name)
                    .font(.headline)
                
                HStack {
                    Image(systemName: "book")
                    Text("\(booksRead) kitoblar")
                        .font(.subheadline)
                }
                
                // Follow button
                Button(action: {
                    // TODO: Handle follow action
                }) {
                    HStack {
                        Image(systemName: "plus")
                        Text("Obuna bo'ling")
                    }
                    .font(.system(size: 10))
                    .padding(5)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            }
            .padding(.horizontal, 40)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    CelebrityItemView(name: "Bakhtiyor Mirzo", booksRead: 25, image: "Elon Musk")
}
