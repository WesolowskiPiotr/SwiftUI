//
//  DataFlow_5.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

extension Notification.Name {
    static let taskAddedNotification = Notification.Name("TaskAddedNotification")
}

struct DataFlow_5: View {
    @State private var newTask: String?
    
    var body: some View {
        VStack {
            Button("Post Notification") {
                NotificationCenter.default.post(name: Notification.Name.taskAddedNotification, object: "Wash the car")
            }
            
            Text(newTask ?? "")
                .onReceive(NotificationCenter.default.publisher(for: Notification.Name.taskAddedNotification), perform: {
                    newTask = $0.object as? String
                })
        }
    }
}

// Xcode 15
#Preview {
    DataFlow_5()
}

// Xcode 14
//struct DataFlow_5_Previews: PreviewProvider {
//    static var previews: some View {
//        DataFlow_5()
//    }
//}
