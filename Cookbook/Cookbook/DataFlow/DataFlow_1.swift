//
//  DataFlow_1.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct DataFlow_1: View {
    @State private var isPresented = false
    @State private var name: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            Text(name)
                .font(.largeTitle)
            
            Button("Add Item") {
                name = ""
                isPresented = true
            }
        }.sheet(isPresented: $isPresented, content: {
            AddItemView(name: $name)
        })
    }
}

// Xcode 15
//#Preview {
//    DataFlow_1()
//}

// Xcode 14
struct DataFlow_1_Previews: PreviewProvider {
    static var previews: some View {
        DataFlow_1()
    }
}
