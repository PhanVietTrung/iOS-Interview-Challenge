//
//  LocalDB.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//
import Foundation

final class LocalDB {
    
    func getArticles() async throws -> [Article] {
        [Article(
            id: UUID(uuidString: "00000000-0000-0000-0000-000000000001")!,
            title: "Swift Concurrency Basics",
            content: "Learn how async/await and structured concurrency simplify async programming in Swift."
        ),
        Article(
            id: UUID(uuidString: "00000000-0000-0000-0000-000000000002")!,
            title: "Getting Started with SwiftUI",
            content: "SwiftUI lets you build UIs declaratively. Views are a function of state."
        ),
        Article(
            id: UUID(uuidString: "00000000-0000-0000-0000-000000000003")!,
            title: "Observation in iOS 17",
            content: "The new Observation framework replaces ObservableObject with @Observable for better performance."
        )]
    }
    
    func setArticles(articles: [Article]) -> Bool {
        true
    }
}
