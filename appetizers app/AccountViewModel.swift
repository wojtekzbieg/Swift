//
//  AccountViewModel.swift
//  app2
//
//  Created by Wojciech Zbieg on 04/09/2025.
//

import SwiftUI


final class AccountViewModel: ObservableObject {
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var email: String = ""
    @Published var dateOfBirth: Date = Date()
    @Published var extraNapkins: Bool = false
    @Published var frequentRefills: Bool = false
        
    var isFormValid: Bool {
        guard !firstName.isEmpty && !lastName.isEmpty && !email.isEmpty else {
            return false
        }
        
        guard email.isEmailValid else {
            return false
        }
        
        return true
    }
    
}
