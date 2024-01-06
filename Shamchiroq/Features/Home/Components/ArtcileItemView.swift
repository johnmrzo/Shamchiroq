//
//  ArtcileItemView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct ArtcileItemView: View {
    var title: String
    var author: String
    var image: String
    var authorImage: String
    
    var body: some View {
        VStack(alignment: .leading) {
            // author image and name
            HStack {
                // Circle for person's image
                Image(authorImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                
                Text("\(author)")
                    .font(.callout)
            }
            
            HStack {
                // article title
                Text(title)
                    .font(.headline)
                
                Spacer()
                Image(image)
                    .resizable()
                    .frame(width: 70, height: 60)
                    .padding(.horizontal, 20)
                
            }
            
            HStack {
                Text("Nov 19, 2023")
                Spacer()
                Image(systemName: "ellipsis")
                    .padding(.horizontal, 20)
            }
        }
        
    }
}


#Preview {
    ArtcileItemView(title: "The apps I am paying for in 2024 and more tips.", author: "Bakhtiyor Mirzo", image: "no-book-image", authorImage: "Elon Musk")
}
