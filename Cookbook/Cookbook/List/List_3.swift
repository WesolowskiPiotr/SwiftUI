//
//  List_3.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct List_3: View {
    
    @State private var taskName: String = ""
    @State private var tasks: [String] = []
    
    private func deletTask(indexSet: IndexSet) {
        indexSet.forEach { index in
            tasks.remove(at: index)
        }
    }
    
    private func moveTask(from source: IndexSet, to destination: Int) {
        tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter task name", text: $taskName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button("Add Task") {
                        tasks.append(taskName)
                        taskName = ""
                    }
                }
                Spacer()
//                List(tasks, id: \.self) { task in
//                    Text(task)
//                }.listStyle(PlainListStyle())
                
                List {
                    ForEach(tasks, id: \.self) { task in
                        Text(task)
                    }
                    .onDelete(perform: deletTask)
                    .onMove(perform: moveTask)
                }
                .listStyle(PlainListStyle())
                .toolbar {
                    EditButton()
                }
            }.padding()
        }
    }
}

// Xcode 15
//#Preview {
//    List_3()
//}

// Xcode 14
struct List_3_Previews: PreviewProvider {
    static var previews: some View {
        List_3()
    }
}
