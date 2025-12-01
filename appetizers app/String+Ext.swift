//
//  String+Ext.swift
//  app2
//
//  Created by Wojciech Zbieg on 04/09/2025.
//

import Foundation


extension String {
    
    var isEmailValid: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
