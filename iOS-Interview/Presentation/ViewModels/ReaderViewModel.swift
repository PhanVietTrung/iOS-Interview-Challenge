//
//  ReaderViewModel.swift
//  iOS-Interview
//
//  Created by Phan, Trung on 5/9/25.
//

import Observation
import Foundation
// 1. Can you fix error in this ViewModel implementation? What wrong with it?
// 2. Write Unit test

@Observable
final class ReaderViewModel {
    
    //MARK: - UI Bindding
    var articles: [Article] = []
    var errorMessage: String? = nil
    
    //MARK: - Local variables
    private let usecases = ReaderArticleUseCase()
    
    //MARK: - Methods
    func getArticles() async {
        do {
            self.articles = try await self.usecases.getArticles()
        } catch {
            self.errorMessage = error.localizedDescription
        }
    }
}
