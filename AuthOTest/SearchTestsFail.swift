import Testing
import SwiftUI
@testable import AuthO

// MARK: - Intentionally failing tests for report search

struct SearchTestsFail {
    // MARK: search_byTitle_caseSensitive_expectedNoResults_fails
    // Fails because search is case-insensitive (uses lowercased()) and should find results.
    @Test
    func searchByTitleCaseSensitiveExpectedNoResultsFails() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "TIENDA" 
        view.title = true
        view.description = false
        view.url = false
        view.category = false
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(results.isEmpty, "This test will fail: the search is NOT case-sensitive, it does return results.")
    }
    
    // MARK: search_byCategory_expectedCapitalizedRelatedField_fails
    // Fails because the actual related field is "categoria" (lowercase), not capitalized "Categoria".
    @Test
    func searchByCategoryExpectedCapitalizedRelatedFieldFails() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "phishing"
        view.title = false
        view.description = false
        view.url = false
        view.category = true
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(!results.isEmpty, "Expected results for category 'phishing'.")
        #require(results.allSatisfy { $0.relatedFields.contains("Categoria") }, "This test will fail: the implementation uses 'categoria' in lowercase.")
    }
    
    // MARK: search_allFiltersDisabled_expectedMatches_fails
    // Fails because with all filters disabled, the implementation returns nothing,
    // but here we demand that it should return results, ignoring filters.
    @Test
    func searchAllFiltersDisabledExpectedMatchesFails() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "Tienda"
        view.title = false
        view.description = false
        view.url = false
        view.category = false
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(!results.isEmpty, "This test will fail: with disabled filters, it should not return any matches.")
    }
}