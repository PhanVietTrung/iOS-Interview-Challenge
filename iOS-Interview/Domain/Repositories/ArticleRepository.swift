//
//  ArticleRepository.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//

protocol ArticleRepository {
    func getArticles() async throws -> [Article]
}
