//
//  XButton.swift
//  app2
//
//  Created by Wojciech Zbieg on 04/09/2025.
//

import SwiftUI

struct XButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .opacity(0.6)
            Image(systemName: "xmark")
                .imageScale(.medium)
                .frame(width: 44, height: 44)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    XButton()
}
