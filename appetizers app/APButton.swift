//
//  APButton.swift
//  app2
//
//  Created by Wojciech Zbieg on 04/09/2025.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.medium)
            .foregroundStyle(Color.white)
            .frame(width: 260, height: 50)
            .background(Color.BritishGreen)
            .cornerRadius(12)
    }
}

#Preview {
    APButton(title: "test button")
}
