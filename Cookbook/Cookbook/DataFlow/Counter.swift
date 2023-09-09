//
//  Counter.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import Foundation

class Counter: ObservableObject {
    
    @Published var value: Int = 0
    
    func increment() {
        DispatchQueue.main.async {
            self.value += 1
        }
    }
}
