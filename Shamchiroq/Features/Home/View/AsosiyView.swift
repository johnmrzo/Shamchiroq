//
//  TopKitoblarView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct AsosiyView: View {
    @EnvironmentObject var navBtnState: NavigationButtonsState
    @EnvironmentObject var sampleData: SampleData
    
    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(sampleData.books, id: \.title) { book in
                    NavigationLink(destination: BookView()) {
                        BookItemView(title: book.title, author: book.author, image: book.image, averageRating: book.averageRating)
                            .padding(3)
                            .padding(.leading, 20)
                    }
                }
            }
        }
    }
}

#Preview {
    AsosiyView()
}
