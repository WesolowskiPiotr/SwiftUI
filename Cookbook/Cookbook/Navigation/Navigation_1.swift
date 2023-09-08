//
//  Navigation_1.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct Navigation_1: View {
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                NavigationLink(isActive: $isActive) {
                    DetailView()
                } label: {
                    Button("Go to detail view") {
                        isActive = true
                    }
                }
            }
        }
    }
}

// Xcode 15
//#Preview {
//    Navigation_1()
//}

// Xcode 14
struct Navigation_1_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_1()
    }
}
