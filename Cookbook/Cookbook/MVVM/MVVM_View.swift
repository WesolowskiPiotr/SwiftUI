//
//  MVVM_View.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import SwiftUI

struct MVVM_View: View {
    
    @StateObject private var postListVM = PostListViewModel()
    
    var body: some View {
        List(postListVM.posts, id: \.id) { post in
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                Text(post.body)
            }
        }.onAppear(perform: {
            postListVM.populatePosts()
        })
    }
}

// Xcode 15
#Preview {
    MVVM_View()
}

// Xcode 14
//struct MVVM_View_Previews: PreviewProvider {
//    static var previews: some View {
//        MVVM_View()
//    }
//}
