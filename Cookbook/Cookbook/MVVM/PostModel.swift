//
//  PostModel.swift
//  Cookbook
//
//  Created by Piotr Wesołowski on 09/09/2023.
//

import Foundation

struct PostModel: Decodable {
    let id: Int
    let title: String
    let body: String
}
