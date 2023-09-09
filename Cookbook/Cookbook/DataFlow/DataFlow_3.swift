//
//  DataFlow_3.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct DataFlow_3: View {
    
    let name: String? = "John Doe"
    
    var body: some View {
        VStack { // 4 OPTIONS FOR UNWRAPPING NAME
            Text(name!) // NOT RECOMMENDED
            
            Text(name ?? "")
            
            name.map {
                Text($0)
            }
            
            if let name = name {
                Text(name)
            }
        }
    }
}

// Xcode 15
#Preview {
    DataFlow_3()
}

// Xcode 14
//struct DataFlow_3_Previews: PreviewProvider {
//    static var previews: some View {
//        DataFlow_3()
//    }
//}
