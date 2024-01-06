//
//  TopKitoblarView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct AsosiyView: View {
    @EnvironmentObject var sampleData: SampleData
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(sampleData.books, id: \.title) { book in
                    NavigationLink(destination: BookView()) {
                        BookItemView(title: book.title, author: book.author, image: book.image ?? "no-book-image", rating: book.rating ?? 0)
                            .padding(3)
                            .padding(.leading, 20)
                    }
                    //Divider()
                }
            }
        }
    }
}

#Preview {
    AsosiyView()
}
