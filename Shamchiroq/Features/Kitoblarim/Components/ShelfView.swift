//
//  ShelfView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/8/24.
//

import SwiftUI

struct ShelfView: View {
    var shelf: Shelf
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(shelf.name)
                    .font(Font.custom("AbhayaLibre-Regular", size: 24))
                Spacer()
                Text("\(shelf.books.count) books")
                    .font(Font.custom("AbhayaLibre-Regular", size: 18))
                    .foregroundColor(.gray)
            }
            .padding()
            
//            ScrollView(.horizontal, showsIndicators: false) {
//                HStack {
//                    ForEach(shelf.books) { book in
//                        BookItemView(book: book)
//                    }
//                }
//            }
        }
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal)
    }
}

#Preview {
    ShelfView(shelf: Shelf(name: "Want to read", books: []))
}
