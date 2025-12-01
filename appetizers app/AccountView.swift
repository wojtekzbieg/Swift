//
//  AccountView.swift
//  app2
//
//  Created by Wojciech Zbieg on 21/08/2025.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    
    var body: some View {
        
        NavigationView {
            Form {
                Section(header: Text("Personal info")) {
                    TextField("First Name", text: $viewModel.firstName)
                    
                    TextField("Last Name", text: $viewModel.lastName)
                    
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $viewModel.dateOfBirth, displayedComponents: .date)
                    
                    Button {
                        print("Save")
                    } label: {
                        Text("Save changes")
                    }
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                .tint(.BritishGreen)
            }
            .navigationTitle(Text("Your account"))
        }
    }
}

#Preview {
    AccountView()
}
