//
//  WriteBlogView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct Kitoblarim: View {
    @State private var shelves: [Shelf] = [
        Shelf(name: "O'qilgan", books: []),
        Shelf(name: "O'qiyotganlarim", books: []),
        Shelf(name: "O'qimoqchilarim", books: [])
    ]
    
    @State private var newShelfName: String = ""
    @State private var showingAddShelf = false
    @State private var hidingAddShelf = false

    
    var body: some View {
        NavigationStack {
            // Custom Title View
            Text("Kitoblarim")
                .font(Font.custom("AbhayaLibre-Regular", size: 24))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(Color(UIColor.systemBackground))
            
            Divider()
            
            ScrollView {
                VStack(alignment: .leading) {
                    ForEach(shelves) { shelf in
                        NavigationLink(destination: Text("No books added yet.")) {
                            ShelfView(shelf: shelf)
                        }
                        .foregroundColor(.black)
                    }
                    
                    // Button to add a new shelf
                    if !hidingAddShelf {
                        Button(action: {
                            showingAddShelf.toggle()
                            hidingAddShelf.toggle()
                        }) {
                            HStack {
                                Image(systemName: "plus") // Plus icon
                                Text("Yaratish") // Text "Create" in Uzbek
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(newShelfName.isEmpty ? Color.green : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        }
                        .padding()
                    }
                    
                    // Text field and Submit button for creating a new shelf
                    if showingAddShelf {
                        TextField("Yangi javon nomi", text: $newShelfName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        
                        Button("Submit") {
                            addNewShelf()
                            showingAddShelf = false
                            hidingAddShelf.toggle()
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(newShelfName.isEmpty ? Color.gray : Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .disabled(newShelfName.isEmpty)
                        .padding()
                    }
                }
                
                
            }
            .navigationBarHidden(true)
        }
    }
    
    func addNewShelf() {
        let newShelf = Shelf(name: newShelfName, books: [])
        shelves.append(newShelf)
        newShelfName = ""
    }
}


#Preview {
    Kitoblarim()
}
