//
//  DataFlow_2.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct DataFlow_2: View {
    
    @EnvironmentObject var counter: Counter
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(counter.value)")
                .font(.largeTitle)
            GreenCounterView()
            RedCounterView()
        }
    }
}

struct GreenCounterView: View {
    @EnvironmentObject var counter: Counter
    var body: some View {
        Button("Increment") {
            counter.increment()
        }
        .padding()
        .background(Color.green)
        .foregroundColor(.white)
    }
}

struct RedCounterView: View {
    @EnvironmentObject var counter: Counter
    var body: some View {
        Button("Increment") {
            counter.increment()
        }
        .padding()
        .background(Color.red)
        .foregroundColor(.white)
    }
}

// Xcode 15
#Preview {
    DataFlow_2()
}

// Xcode 14
//struct DataFlow_2_Previews: PreviewProvider {
//    static var previews: some View {
//        let counter = Counter()
//        DataFlow_2().environmentObject(counter)
//    }
//}
