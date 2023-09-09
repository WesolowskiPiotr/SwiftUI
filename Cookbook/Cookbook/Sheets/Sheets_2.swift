//
//  Sheets_2.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    var id: UUID {
        return UUID()
    }
    
    case addItem
    case showItem
}

struct Sheets_2: View {
    @State private var activeSheet: ActiveSheet?
    
    var body: some View {
        HStack {
            Button("Add Item") {
                activeSheet = .addItem
            }
            .foregroundColor(.white)
            .background(.green)
            
            Button("Show Item") {
                activeSheet = .showItem
            }
            .foregroundColor(.white)
            .background(.red)
        }.sheet(item: $activeSheet, content: { sheet in
            switch sheet {
            case .addItem:
                AddItemViewSheets()
            case .showItem:
                Text("Show Item")
            }
        })
        
    }
}

// Xcode 15
#Preview {
    Sheets_2()
}

// Xcode 14
//struct Sheets_2_Previews: PreviewProvider {
//    static var previews: some View {
//        Sheets_2()
//    }
//}
