//
//  AppetizerDetailView.swift
//  app2
//
//  Created by Wojciech Zbieg on 31/08/2025.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            
            Spacer()
            
            Text(appetizer.name)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.bottom, 10)
            
            Text(appetizer.description)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding(.bottom, 15)
            
            HStack {
                NutritionInfo(text: "Calories", value: "\(appetizer.calories) kcal")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 25)
                
                NutritionInfo(text: "Carbs", value: "\(appetizer.carbs) g")
                
                NutritionInfo(text: "Protein", value: "\(appetizer.protein) g")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 28)
            }
            
            Spacer()
            
            Button (action: {}) {
                APButton(title: "$\(appetizer.price, specifier: "%.2f") - Add To Cart")
            }
            
            Spacer()

        }
        .frame(width: 320, height: 520)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(alignment: .topTrailing) {
            Button {
                isShowingDetail = false
            } label: {
                XButton()
            }
        }
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}


struct NutritionInfo: View {
    
    var text: String
    var value: String
    
    var body: some View {
        VStack {
            Text(text)
                .font(.footnote)
            Text(value)
                .fontWeight(.light)
                .italic()
                .foregroundColor(.secondary)
            
        }
    }
}
