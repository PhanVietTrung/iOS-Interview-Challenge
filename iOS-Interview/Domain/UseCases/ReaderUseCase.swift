//
//  ReaderUseCase.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//

import Foundation

// 1. Are these classes follow Clean Architecture? How to fix it?
final class APIReaderArticleUseCase {
    func getArticles() async throws -> [Article] {
        return await Task.detached(priority: .background) {
            return [Article(id: UUID(), title:"BE Article 1", content:""),
                    Article(id: UUID(), title:"BE Article 2", content: ""),
                    Article(id: UUID(), title:"BE Article 3", content: "")]
        }.value
    }
}

final class LocalCacheReaderArticleUseCase {
    func getArticles() async throws -> [Article] {
        let localDB = LocalDB()
        return try await localDB.getArticles()
    }
}

final class ReaderArticleUseCase {
    private let local = LocalCacheReaderArticleUseCase()
    private let api = APIReaderArticleUseCase()
    
    func getArticles() async throws -> [Article] {
        async let localArticles = local.getArticles()
        async let apiArticles = api.getArticles()
        
        return try await localArticles + apiArticles
        
    }
}
