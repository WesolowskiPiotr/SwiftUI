//
//  FlexibleSheet.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

enum SheetMode {
    case none
    case quarter
    case half
    case full
}

struct FlexibleSheet<Content: View>: View {
    
    let content: () -> Content
    var sheetMode: Binding<SheetMode>
    
    init(sheetMode: Binding<SheetMode>, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.sheetMode = sheetMode
    }
    
    private func calculateOffset() -> CGFloat {
        switch sheetMode.wrappedValue {
        case .none:
            return UIScreen.main.bounds.height
        case .quarter:
            return UIScreen.main.bounds.height - 200
        case .half:
            return UIScreen.main.bounds.height/2
        case .full:
            return 0
        }
    }
    
    var body: some View {
        content()
            .offset(y: calculateOffset())
            .animation(.spring())
            .edgesIgnoringSafeArea(.all)
    }
}


// Xcode 15
#Preview {
    FlexibleSheet(sheetMode: .constant(.none)) {
        FlexibleSheet(sheetMode: .constant(.none)){
            VStack {
                Text("Hello World")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
        }
    }
}

// Xcode 14
//struct FlexibleSheet_Previews: PreviewProvider {
//    static var previews: some View {
//        FlexibleSheet(sheetMode: .constant(.none)){
//            VStack {
//                Text("Hello World")
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.blue)
//            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
//        }
//    }
//}
