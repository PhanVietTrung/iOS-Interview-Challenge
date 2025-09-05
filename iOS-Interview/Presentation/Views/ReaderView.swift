//
//  ContentView.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//

import SwiftUI

struct ReaderView: View {
    @State private var viewModel: ReaderViewModel = ReaderViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.articles, id: \.self) { article in
                NavigationLink(value: article) {
                    Text(article.title)
                }
            }
            .navigationDestination(for: Article.self) { article in
                ArticleDetailView(article: article)
            }
        }
        .navigationTitle("Articles")
        .task {
           await self.viewModel.getArticles()
        }
    }
}

#Preview {
    ReaderView()
}
