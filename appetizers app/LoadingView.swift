//
//  LoadingView.swift
//  app2
//
//  Created by Wojciech Zbieg on 28/08/2025.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .BritishGreen))
                .scaleEffect(2)
        }
    }
}

#Preview {
    LoadingView()
}
