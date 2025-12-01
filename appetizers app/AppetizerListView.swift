//
//  AppetizerListView.swift
//  app2
//
//  Created by Wojciech Zbieg on 21/08/2025.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject var viewModel = AppetizerListViewModel()
    @State var isShowingDetail: Bool = false
    @State var selectedAppetizer: Appetizer?
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List(viewModel.appetizers) {appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                            selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0 )
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}




struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 132, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
            }
            .padding(.leading, 12)
        }
    }
}

#Preview {
    AppetizerListView()
}
