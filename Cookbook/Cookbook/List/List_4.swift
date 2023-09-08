//
//  List_4.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct List_4: View {
    var body: some View {
        NavigationView {
            List(1...20, id: \.self) { index in
                HStack {
                    Text("\(index)")
                }.listRowSeparator(.hidden)
            }.listStyle(.plain)
        }
    }
}

// Xcode 15
//#Preview {
//    List_4()
//}

// Xcode 14
struct List_4_Previews: PreviewProvider {
    static var previews: some View {
        List_4()
    }
}
