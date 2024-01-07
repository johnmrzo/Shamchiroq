//
//  SampleData.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/6/24.
//

import Foundation

class SampleData: ObservableObject {
    static let shared = SampleData()
    
    init() {
        initializeData()
    }
    
    var users: [User] = []
    var reviews: [Review] = []
    var ratings: [Rating] = []
    var books: [Book] = []
    
    func initializeData() {
        users = [
            User(firstName: "John", lastName: "Doe", username: "john_doe", email: "john@example.com"),
            User(firstName: "Jane", lastName: "Smith", username: "jane_smith", email: "jane@example.com"),
            User(firstName: "Alice", lastName: "Johnson", username: "alice_j", email: "alice@example.com"),
            User(firstName: "Bob", lastName: "Williams", username: "bob_w", email: "bob@example.com"),
            User(firstName: "Eva", lastName: "Brown", username: "eva_brown", email: "eva@example.com"),
            User(firstName: "Charlie", lastName: "Johnson", username: "charlie_j", email: "charlie@example.com"),
            User(firstName: "Sophia", lastName: "Miller", username: "sophia_m", email: "sophia@example.com"),
            User(firstName: "David", lastName: "Davis", username: "david_d", email: "david@example.com"),
            User(firstName: "Emma", lastName: "Jones", username: "emma_j", email: "emma@example.com"),
            User(firstName: "Michael", lastName: "Taylor", username: "michael_t", email: "michael@example.com"),
        ]
        
        reviews = [
            Review(review: "Great book!", user: users[0]),
            Review(review: "Enjoyed it!", user: users[1]),
            Review(review: "Interesting plot!", user: users[2]),
            Review(review: "Could be better.", user: users[3]),
            Review(review: "A must-read!", user: users[4]),
            Review(review: "Didn't like the ending.", user: users[5]),
            Review(review: "Captivating story!", user: users[6]),
            Review(review: "Highly recommended.", user: users[7]),
            Review(review: "Well-written.", user: users[8]),
            Review(review: "Could not put it down!", user: users[9]),
        ]
        
        ratings = [
            Rating(numOfStars: 4, user: users[0]),
            Rating(numOfStars: 5, user: users[1]),
            Rating(numOfStars: 3, user: users[2]),
            Rating(numOfStars: 2, user: users[3]),
            Rating(numOfStars: 5, user: users[4]),
            Rating(numOfStars: 3, user: users[5]),
            Rating(numOfStars: 4, user: users[6]),
            Rating(numOfStars: 5, user: users[7]),
            Rating(numOfStars: 4, user: users[8]),
            Rating(numOfStars: 5, user: users[9]),
        ]
        
        books = [
            Book(title: "The Great Gatsby", author: "F. Scott Fitzgerald", image: "The-Great-Gatsby", ratings: [ratings[0], ratings[1]], raviews: [reviews[0], reviews[1]]),
            Book(title: "To Kill a Mockingbird", author: "Harper Lee", image: "no-book-image", ratings: [ratings[2], ratings[3]], raviews: [reviews[2], reviews[3]]),
            Book(title: "1984", author: "George Orwell", image: "no-book-image", ratings: [ratings[4], ratings[5]], raviews: [reviews[4], reviews[5]]),
            Book(title: "Pride and Prejudice", author: "Jane Austen", image: "no-book-image", ratings: [ratings[6], ratings[7]], raviews: [reviews[6], reviews[7]]),
            Book(title: "The Catcher in the Rye", author: "J.D. Salinger", image: "no-book-image", ratings: [ratings[8], ratings[9]], raviews: [reviews[8], reviews[9]]),
            Book(title: "The Lord of the Rings", author: "J.R.R. Tolkien", image: "no-book-image", ratings: [ratings[6], ratings[1]], raviews: [reviews[6], reviews[9]]),
            Book(title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", image: "no-book-image", ratings: [ratings[2], ratings[3]], raviews: [reviews[9], reviews[1]]),
            Book(title: "The Hobbit", author: "J.R.R. Tolkien", image: "no-book-image", ratings: [ratings[1], ratings[5]], raviews: [reviews[4], reviews[5]]),
            Book(title: "The Great Book", author: "John Doe", image: "no-book-image", ratings: [ratings[6], ratings[7]], raviews: [reviews[6], reviews[7]]),
            Book(title: "Fantastic Novel", author: "Alice Smith", image: "no-book-image", ratings: [ratings[8], ratings[9]], raviews: [reviews[8], reviews[9]]),
            Book(title: "Mystery Thriller", author: "Bob Johnson", image: "no-book-image", ratings: [ratings[0], ratings[1]], raviews: [reviews[0], reviews[1]]),
            Book(title: "The Chronicles of Narnia", author: "C.S. Lewis", image: "no-book-image", ratings: [ratings[2], ratings[3]], raviews: [reviews[2], reviews[3]]),
            Book(title: "Brave New World", author: "Aldous Huxley", image: "no-book-image", ratings: [ratings[4], ratings[5]], raviews: [reviews[4], reviews[5]]),
            Book(title: "One Hundred Years of Solitude", author: "Gabriel García Márquez", image: "no-book-image", ratings: [ratings[6], ratings[7]], raviews: [reviews[6], reviews[7]]),
            Book(title: "The Da Vinci Code", author: "Dan Brown", image: "no-book-image", ratings: [ratings[8], ratings[9]], raviews: [reviews[8], reviews[9]]),
            Book(title: "The Alchemist", author: "Paulo Coelho", image: "no-book-image", ratings: [ratings[3], ratings[1]], raviews: [reviews[6], reviews[1]]),
            Book(title: "The Shining", author: "Stephen King", image: "no-book-image", ratings: [ratings[2], ratings[3]], raviews: [reviews[2], reviews[3]]),
            Book(title: "The Hunger Games", author: "Suzanne Collins", image: "no-book-image", ratings: [ratings[4], ratings[5]], raviews: [reviews[4], reviews[5]]),
            Book(title: "The Kite Runner", author: "Khaled Hosseini", image: "no-book-image", ratings: [ratings[6], ratings[7]], raviews: [reviews[6], reviews[7]]),
            Book(title: "The Fault in Our Stars", author: "John Green", image: "no-book-image", ratings: [ratings[8], ratings[9]], raviews: [reviews[8], reviews[9]]),
        ]
    }
}
