//
//  List_5.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 08/09/2023.
//

import SwiftUI

struct Post: Identifiable {
    let id = UUID()
    let title: String
    let comments: [Comment]
}

struct Comment: Identifiable {
    let id = UUID()
    let title: String
}

struct List_5: View {
    
    let posts = [
        Post(title: "Post #1", comments: [
            Comment(title: "Comment 1 for Post 1"),
            Comment(title: "Comment 2 for Post 1"),
        ]),
        Post(title: "Post #2", comments: [
            Comment(title: "Comment 1 for Post 2"),
            Comment(title: "Comment 2 for Post 2"),
        ])
    ]
    
    var body: some View {
        List {
            ForEach(posts) { post in
                Section(header: Text(post.title)) {
                    ForEach(post.comments) { comments in
                        Text(comments.title)
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

// Xcode 15
//#Preview {
//    List_5()
//}

// Xcode 14
struct List_5_Previews: PreviewProvider {
    static var previews: some View {
        List_5()
    }
}
