//
//  MVVM_ViewModel.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import Foundation

class PostListViewModel: ObservableObject {
    
    @Published var posts: [PostViewModel] = [PostViewModel]()
    
    func populatePosts() {
        Webservice().fetchPosts { (result) in
            switch result {
            case .success(let posts):
                DispatchQueue.main.async {
                    self.posts = posts.map(PostViewModel.init)
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}

struct PostViewModel {
    let post: PostModel
    
    var id: Int {
        post.id
    }
    var title: String {
        post.title
    }
    var body: String {
        post.body
    }
}
