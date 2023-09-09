//
//  DataFlow_4.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct DataFlow_4: View {
    @State private var isLighOn: Bool = false
    
    var body: some View {
        Toggle("Light", isOn: $isLighOn)
            .onChange(of: isLighOn, perform: { value in
                if value {
                    print("LIGHT ON")
                } else {
                    print("LIGHT OFF")
                }
            })
            .fixedSize()
    }
}

// Xcode 15
#Preview {
    DataFlow_4()
}

// Xcode 14
//struct DataFlow_4_Previews: PreviewProvider {
//    static var previews: some View {
//        DataFlow_4()
//    }
//}
