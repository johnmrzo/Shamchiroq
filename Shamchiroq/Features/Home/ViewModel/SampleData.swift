//
//  SampleData.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/6/24.
//

import Foundation

class SampleData: ObservableObject {
    @Published var books: [Book] = [
        Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", image: "The-Great-Gatsby", rating: 4),
        Book(title: "To Kill a Mockingbird", author: "Harper Lee", rating: 3),
        Book(title: "1984", author: "George Orwell", rating: 5),
        Book(title: "Pride and Prejudice", author: "Jane Austen", rating: 2),
        Book(title: "The Catcher in the Rye", author: "J.D. Salinger", rating: 1),
        Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien", rating: 5),
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
