//
//  AddItemView.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct AddItemViewSheets: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
                Text("AddItem View")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            
            .navigationTitle("Add Item")
            .navigationBarItems(trailing: Button("Close") {
                presentationMode.wrappedValue.dismiss()
            })
        }
    }
}

// Xcode 15
#Preview {
    AddItemView(name: .constant("John"))
}

// Xcode 14
//struct AddItemViewSheets_Previews: PreviewProvider {
//    static var previews: some View {
//        AddItemViewSheets()
//    }
//}
