//
//  AddItemView.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct AddItemView: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var name: String
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter name", text: $name)
                HStack {
                    Spacer()
                    Button("Submit") {
                        presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }
            }
            .navigationTitle("Add Item")
        }
    }
}


// Xcode 15
//#Preview {
//    AddItemView()
//}

// Xcode 14
struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView(name: .constant("Mery Doe"))
    }
}
