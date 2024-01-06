//
//  MashxurlarView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct MashxurlarView: View {
    var people: [Celebrity]
    
    init() {
        // Sample data
        people = [
            Celebrity(name: "Elon Musk", booksRead: 25, image: "Elon Musk"),
            Celebrity(name: "Bill Gates", booksRead: 50, image: "Bill Gates"),
            Celebrity(name: "Joe Rogan", booksRead: 12, image: "Joe Rogan"),
            Celebrity(name: "Eva Williams", booksRead: 30),
            Celebrity(name: "Charlie Brown", booksRead: 18),
            Celebrity(name: "Sophia Davis", booksRead: 42),
            Celebrity(name: "Michael Wilson", booksRead: 15),
            Celebrity(name: "Emma Harris", booksRead: 37),
            Celebrity(name: "Daniel Miller", booksRead: 21),
            Celebrity(name: "Olivia Anderson", booksRead: 29),
            Celebrity(name: "James Martin", booksRead: 33),
            Celebrity(name: "Emily Thompson", booksRead: 10),
            Celebrity(name: "William Jackson", booksRead: 27),
            Celebrity(name: "Ava White", booksRead: 48),
            Celebrity(name: "Liam Garcia", booksRead: 19),
            Celebrity(name: "Charlotte Martinez", booksRead: 22),
            Celebrity(name: "Benjamin Rodriguez", booksRead: 36),
            Celebrity(name: "Amelia Brown", booksRead: 14),
            Celebrity(name: "Mason Taylor", booksRead: 31),
            Celebrity(name: "Harper Clark", booksRead: 26),
            Celebrity(name: "Ethan Lewis", booksRead: 40),
            Celebrity(name: "Ella Hill", booksRead: 17),
            Celebrity(name: "Jackson Adams", booksRead: 23),
            Celebrity(name: "Grace Turner", booksRead: 35),
            Celebrity(name: "Aiden Evans", booksRead: 28),
            Celebrity(name: "Scarlett Hall", booksRead: 45),
            Celebrity(name: "Lucas Wright", booksRead: 13),
            Celebrity(name: "Chloe Garcia", booksRead: 32),
            Celebrity(name: "Logan King", booksRead: 39),
            Celebrity(name: "Zoe Perez", booksRead: 20),
        ]
    }
    
    var body: some View {
        ScrollView {
            ForEach(people, id: \.name) { person in
                CelebrityItemView(name: person.name, booksRead: person.booksRead, image: person.image ?? "no-image")
                    .padding(.bottom, 16)
                    .padding(.leading)
                Divider()
            }
        }
    }
}
#Preview {
    MashxurlarView()
}
