//
//  TopKitoblarView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct TopKitoblarView: View {
    var books: [Book]
    
    init() {
        // Sample data
        books = [
            Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", image: "The-Great-Gatsby"),
            Book(title: "To Kill a Mockingbird", author: "Harper Lee"),
            Book(title: "1984", author: "George Orwell"),
            Book(title: "Pride and Prejudice", author: "Jane Austen"),
            Book(title: "The Catcher in the Rye", author: "J.D. Salinger"),
            Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien"),
            Book(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling"),
            Book(title: "The Hobbit", author: "J.R.R. Tolkien"),
            Book(title: "The Great Book", author: "John Doe"),
            Book(title: "Fantastic Novel", author: "Alice Smith"),
            Book(title: "Mystery Thriller", author: "Bob Johnson"),
            Book(title: "The Chronicles of Narnia", author: "C.S. Lewis"),
            Book(title: "Brave New World", author: "Aldous Huxley"),
            Book(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez"),
            Book(title: "The Da Vinci Code", author: "Dan Brown"),
            Book(title: "The Alchemist", author: "Paulo Coelho"),
            Book(title: "The Shining", author: "Stephen King"),
            Book(title: "The Hunger Games", author: "Suzanne Collins"),
            Book(title: "The Kite Runner", author: "Khaled Hosseini"),
            Book(title: "The Fault in Our Stars", author: "John Green"),
        ]

    }
    
    var body: some View {
        ScrollView {
            ForEach(books, id: \.title) { book in
                TopKitobItemView(title: book.title, author: book.author, image: book.image ?? "no-book-image")
                    .padding(.bottom, 16)
                    .padding(.leading)
                Divider()
            }
        }
    }
}

#Preview {
    TopKitoblarView()
}
