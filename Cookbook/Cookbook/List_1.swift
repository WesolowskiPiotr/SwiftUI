//
//  ContentView.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
}

struct List_1: View {
    
    let friends = [Friend(name: "John"),
                   Friend(name: "Mary"),
                   Friend(name: "Steven")]
    
    var body: some View {
        
//        List(1...20, id: \.self) { index in
//            Text("\(index)")
//        }
        
//        List(friends, id: \.name) { friend in
//            Text(friend.name)
//        }
        
//        List(friends, id: \.id) { friend in
//            Text(friend.name)
//        }
        
//        List(friends) { friend in
//            Text(friend.name)
//        }
        
        List(friends.indices) { index in
            let friend = friends[index]
            HStack {
                Text("\(index + 1)")
                Text(friend.name)
            }
        }
    }
}

#Preview {
    List_1()
}
