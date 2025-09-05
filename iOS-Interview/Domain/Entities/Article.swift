//
//  Article.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//
import Foundation

struct Article {
    let id: UUID
    let title: String
    let content: String
}

extension Article: Hashable {}
extension Article: Decodable {}
