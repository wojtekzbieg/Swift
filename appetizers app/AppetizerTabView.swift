//
//  AppetizerTabView.swift
//  app2
//
//  Created by Wojciech Zbieg on 21/08/2025.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            Tab("Appetizers", systemImage: "fork.knife") {
                AppetizerListView()
            }
            Tab("Order", systemImage: "bag") {
                OrderView()
            }
            Tab("Account", systemImage: "person.crop.circle") {
                AccountView()
            }
        }
        .accentColor(.BritishGreen)
    }
}

#Preview {
    AppetizerTabView()
}
