//
//  BookItemView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/6/24.
//

import SwiftUI

struct BookItemView: View {
    var title: String
    var author: String
    var image: String
    var rating: Int
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 70, height: 90)
                        
            // Title and author of the book
            VStack(alignment: .leading) {
                Spacer()
                
                Text(title)
                    .font(Font.custom("AbhayaLibre-Regular", size: 20))
                
                Spacer()
                
                Text("\(author)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .font(.system(size: 10))
                
                Spacer()
                
                Button(action: {
                    // Action to perform when the button is tapped
                    // Add your code here
                }) {
                    HStack {
                        Text("Saqlash")
                            .foregroundColor(.white)
                            .font(.system(size: 12))
                        
                        // Vertical line separator
                        Rectangle()
                            .frame(width: 1, height: 20)
                            .foregroundColor(.white)
                        
                        // Down arrow icon
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                    }
                    .padding(5)
                }
                .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.green))
                
                Spacer()
                
                // Ratings
                HStack {
                    Text("Rayting:")
                        .font(.system(size: 12))
                        .foregroundColor(.gray)
                    
                    ForEach(0..<5) { index in
                        Image(systemName: index < rating ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .font(.system(size: 10))
                    }
                }
                
                Spacer()
                
            }
            .padding(.leading, 10)
            
            Spacer()
        }
    }
}

#Preview {
    BookItemView(title: "The Great Gatsby", author: "F. Scott Fitzgerald", image: "The-Great-Gatsby", rating: 4)
}
