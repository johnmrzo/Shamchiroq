//
//  BookView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/6/24.
//

import SwiftUI

struct BookView: View {
    let bookTitle: String
    let authorName: String
    let image: String
    let averageRating: Double
    let numberOfRatings: Int
    let numberOfReviews: Int
    let bookDescription: String
    let maxDescriptionLength: Int = 300
    
    @State private var showFullDescription = false
    
    var truncatedDescription: String {
        if showFullDescription || bookDescription.count <= maxDescriptionLength {
            return bookDescription
        } else {
            let index = bookDescription.index(bookDescription.startIndex, offsetBy: maxDescriptionLength)
            return String(bookDescription[..<index]) + "..."
        }
    }
    
    var body: some View {
        ScrollView {
            VStack {
                // Book image at the top centered
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 250)
                
                Divider()
                
                // Title and author of the book
                Text(bookTitle)
                    .font(Font.custom("AbhayaLibre-Regular", size: 40))
                    .multilineTextAlignment(.center)
                
                Text(authorName)
                    .foregroundColor(.gray)
                
                // Ratings
                HStack {
                    ForEach(0..<5) { index in
                        Image(systemName: index < Int(averageRating.rounded(.toNearestOrAwayFromZero)) ? "star.fill" : "star")
                            .foregroundColor(.yellow)
                            .font(.system(size: 10))
                    }
                    
                    Text("\(Int(averageRating.rounded(.toNearestOrAwayFromZero)))")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                }
                
                // Number of ratings and reviews
                HStack {
                    Text("\(numberOfRatings) Ratings")
                        .foregroundColor(.gray)
                    
                    Text(" | ")
                    
                    Text("\(numberOfRatings) Reviews")
                        .foregroundColor(.gray)
                }
                
                // Saqlash button
                Button(action: {
                    // Action to perform when the button is tapped
                    // Add your code here
                }) {
                    HStack {
                        Text("Saqlash")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                        
                        // Vertical line separator
                        Rectangle()
                            .frame(width: 1, height: 20)
                            .foregroundColor(.white)
                        
                        // Down arrow icon
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                    }
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 10).foregroundColor(.green))
                }
                
                Divider()
                
                // Truncated or full book description
                Text(truncatedDescription)
                    .padding()
                
                // Show More/Less Button
                if bookDescription.count > maxDescriptionLength {
                    Button(action: {
                        withAnimation {
                            showFullDescription.toggle()
                        }
                    }) {
                        Text(showFullDescription ? "Kamroq" : "Ko'proq")
                            .foregroundColor(.blue)
                            .font(.system(size: 14))
                            .padding(.top, 5)
                    }
                }
                Divider()
                
                // Community Ratings
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text("\(numberOfReviews) Bildirilgan fikrlar")
                            .font(.headline)
                            .bold()
                        
                        Spacer()
                    }
                    
                    // Display stars with average rating and number of reviews
                    HStack(spacing: 4) {
                        ForEach(0..<5) { index in
                            Image(systemName: index < Int(averageRating.rounded(.toNearestOrAwayFromZero)) ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                                .font(.system(size: 14))
                        }
                        
                        Text("\(Int(averageRating.rounded(.toNearestOrAwayFromZero)))")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                            .padding(.leading, 4)
                        
                        Text("(\(numberOfRatings) baholashlar)")
                            .foregroundColor(.gray)
                            .font(.subheadline)
                    }
                    
                    // Progress Line
                    VStack(alignment: .leading, spacing: 4) {
                        ForEach(1...5, id: \.self) { star in
                            HStack {
                                Text("\(-(star-6)) Star")
                                    .foregroundColor(.gray)
                                    .font(.footnote)
                                
                                Spacer()
                                
                                // Calculate the percentage of reviews for the current star
                                let percentage = star <= Int(averageRating.rounded(.toNearestOrAwayFromZero)) ?
                                Double(numberOfReviews) / Double(numberOfRatings) * 100 : 0
                                
                                // Draw progress line
                                Rectangle()
                                    .frame(height: 4)
                                    .foregroundColor(.yellow)
                                    .opacity(percentage / 100)
                            }
                        }
                    }
                }
                .padding()
                
                Divider()
                
                // Comments, Reviews
                
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    BookView(bookTitle: "The Fault in Our Stars", authorName: "John Green", image: "no-book-image", averageRating: 3.4, numberOfRatings: 143, numberOfReviews: 122, bookDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tortor posuere ac ut consequat semper viverra. Feugiat in fermentum posuere urna nec tincidunt praesent. Blandit libero volutpat sed cras. Aliquam etiam erat velit scelerisque in. Volutpat sed cras ornare arcu dui vivamus arcu. Morbi tincidunt ornare massa eget egestas purus viverra. Leo integer malesuada nunc vel risus commodo viverra maecenas. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Nam libero justo laoreet sit amet cursus. Lacinia at quis risus sed vulputate odio. Ut aliquam purus sit amet luctus venenatis. Volutpat diam ut venenatis tellus in metus vulputate eu. Massa placerat duis ultricies lacus. Urna neque viverra justo nec ultrices dui. Eu non diam phasellus vestibulum lorem sed. Pharetra convallis posuere morbi leo urna molestie at. Facilisis volutpat est velit egestas dui id ornare. Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt.")
}
