//
//  List_6.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct List_6: View {
    
    init() {
//        UITableView.appearance().backgroundColor = UIColor.yellow
        // Doesn't change the color
//        UITableViewCell.appearance().backgroundColor = UIColor.yellow
    }
    
    var body: some View {
       
//        List(1...20, id: \.self) { index in
//            HStack {
//                Text("\(index)")
//                Spacer()
//            }.listRowBackground(index % 2 == 0 ?Color.red : Color.white)
//        }.background(Color.red)
        
//        List {
//            ForEach(1...10, id: \.self) { index in
//                HStack {
//                    Text("\(index)")
//                    Spacer()
//                }.listRowBackground(Color.green)
//            }
//        }
//        .background(.yellow)
////        .background(Image("ventura"))
//        .scrollContentBackground(.hidden)
        
        ScrollView {
            LazyVStack(spacing: 10) {
                ForEach(1...20, id: \.self) { index in
                   HStack {
                       VStack(alignment: .leading) {
                           Text("\(index)")
                           Divider()
                       }
                       Spacer()
                   }
               }
            }
            .padding()
            .background(Color.green)
        }.background(Color.yellow)
    }
}

// Xcode 15
//#Preview {
//    List_6()
//}

// Xcode 14
struct List_6_Previews: PreviewProvider {
    static var previews: some View {
        List_6()
    }
}
