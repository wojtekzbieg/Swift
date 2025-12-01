//
//  Appetizer.swift
//  app2
//
//  Created by Wojciech Zbieg on 21/08/2025.
//

import Foundation


struct Appetizer: Decodable, Identifiable {
    let id: String
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int

}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: "0001", name: "Gulasz", description: "Gulasz jest bardzo dobry i smaczny i pozywny", price: 10.99, imageURL: "", calories: 500, protein: 30, carbs: 100)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
