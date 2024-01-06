//
//  BottomNavigationItemView.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct BottomNavigationItemView: View {
    let imageName: String
    let title: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .imageScale(.small)
            
            Text(title)
                .font(.system(size: 12))
        }
    }
}

#Preview {
    BottomNavigationItemView(imageName: "house", title: "Home")
}
