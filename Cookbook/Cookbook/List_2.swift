//
//  List_2.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct List_2: View {
    
    let animals = ["dog", "cat", "elephant", "zebra", "pigeon"]
    
    var body: some View {
        List(animals.indices, id: \.self) { index in
            let animal = animals[index]
            HStack {
                Text(animal)
                    .font(.largeTitle)
                Spacer()
            }.background(index % 2 == 0 ? Color.white : Color.red)
        }
    }
}

#Preview {
    List_2()
}
