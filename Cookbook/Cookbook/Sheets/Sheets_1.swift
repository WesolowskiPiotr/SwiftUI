//
//  Sheets_1.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct Sheets_1: View {
    
    @State private var isPresented: Bool = false
    @State private var dismissed: Bool = false
    
    var body: some View {
        VStack {
            Button("Add Item") {
                isPresented = true
            }
            Text(dismissed ? "DISMISSED" : "")
        }.sheet(isPresented: $isPresented, onDismiss: {
            dismissed = true
        }, content: {
            AddItemViewSheets()
        })
    }
}

// Xcode 15
#Preview {
    Sheets_1()
}

// Xcode 14
//struct Sheets_1_Previews: PreviewProvider {
//    static var previews: some View {
//        Sheets_1()
//    }
//}
