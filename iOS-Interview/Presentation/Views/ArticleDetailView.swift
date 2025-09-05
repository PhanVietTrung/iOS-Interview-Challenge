//
//  ArticleDetailView.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//

import SwiftUI

struct ArticleDetailView: View {
    
    init(article: Article) {
        self.article = article
    }
    
    private let article: Article
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(article.content)
                    .font(.body)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        
        .navigationTitle(article.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ArticleDetailView(article: Article(id: UUID(), title: "Article ", content: "Article details"))
}
