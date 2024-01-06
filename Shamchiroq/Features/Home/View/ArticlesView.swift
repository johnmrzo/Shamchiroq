//
//  ArticlesView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct ArticlesView: View {
    var articles: [Article]
    
    init() {
        // Sample data
        articles = [
            Article(title: "How to Stay Productive While Working Remotely", author: "Elon Musk", image: "The-Great-Gatsby", authorImage: "Elon Musk"),
            Article(title: "The Art of Time Management", author: "Bill Gates", image: "no-book-image", authorImage: "Bill Gates"),
            Article(title: "Tips for a Healthy Lifestyle", author: "Bob Johnson"),
            Article(title: "Exploring New Frontiers in Science", author: "Eva Williams"),
            Article(title: "The Impact of Climate Change", author: "Charlie Brown"),
            Article(title: "Cooking Made Easy: Quick and Delicious Recipes", author: "Sophia Davis"),
            Article(title: "Financial Planning for Beginners", author: "Michael Wilson"),
            Article(title: "Mindfulness Meditation for Stress Relief", author: "Emma Harris"),
            Article(title: "The Latest in Technology Trends", author: "Daniel Miller"),
            Article(title: "Traveling on a Budget: Your Ultimate Guide", author: "Olivia Anderson"),
        ]
    }
    
    var body: some View {
        ScrollView {
            ForEach(articles) { article in
                ArtcileItemView(title: article.title, author: article.author, image: article.image ?? "no-book-image", authorImage: article.authorImage ?? "no-image")
                    .padding(.bottom, 16)
                    .padding(.leading)
                Divider()
            }
        }
    }
}

#Preview {
    ArticlesView()
}
