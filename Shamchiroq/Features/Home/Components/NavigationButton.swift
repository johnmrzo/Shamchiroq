//
//  NavigationButton.swift
//  Shamchiroq
//
//  Created by Bakhtiyorjon Mirzajonov on 1/4/24.
//

import SwiftUI

struct NavigationButton: View {
    let title: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.caption)
        }
        .padding(8)
    }
}

#Preview {
    NavigationButton(title: "Postlar")
}
