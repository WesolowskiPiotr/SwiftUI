//
//  Webservice.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import Foundation

enum NetworkError: Error {
    case badUrl
    case badRequest
}

class Webservice {
    func fetchPosts(completion: @escaping (Result<[PostModel], NetworkError>) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            //fatalError("URL is not correct")
            completion(.failure(.badUrl))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            guard let data = data, error == nil else {
                //fatalError("Bad request")
                completion(.failure(.badRequest))
                return
            }
            
            let posts = try? JSONDecoder().decode([PostModel].self, from: data)
            completion(.success(posts ?? []))
        }.resume()
    }
}
