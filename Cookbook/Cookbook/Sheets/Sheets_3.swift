//
//  Sheets_3.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct Sheets_3: View {
    
    @State private var sheetMode: SheetMode = .none
    
    var body: some View {
        ZStack {
            FlexibleSheet(sheetMode: $sheetMode) {
                VStack {
                    Text("Hello World!")
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            }
            
            Button("Show") {
                switch sheetMode {
                case .none:
                    sheetMode = .quarter
                case .quarter:
                    sheetMode = .half
                case .half:
                    sheetMode = .full
                case .full:
                    sheetMode = .none
                }
            }
        }
    }
}


// Xcode 15
#Preview {
    Sheets_3()
}

// Xcode 14
//struct Sheets_3_Previews: PreviewProvider {
//    static var previews: some View {
//        Sheets_3()
//    }
//}
