//
//  DataFlow_6.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct DataFlow_6: View {
    
//    @State private var isOn: Bool = false
    @AppStorage("isOn") private var isOn: Bool = false
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn, label: {
                Text("Dark Mode")
                    .foregroundColor(.white)
            })
            .fixedSize()
//            .onChange(of: isOn, perform: { value in
//
//            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? Color.black : Color.blue)
    }
}

// Xcode 15
#Preview {
    DataFlow_6()
}

// Xcode 14
//struct DataFlow_6_Previews: PreviewProvider {
//    static var previews: some View {
//        DataFlow_6()
//    }
//}
