import Testing
import SwiftUI
@testable import AuthO

// MARK: - Tests for report search (SearchView.searchCards)

struct SearchTests {
    // MARK: search_byTitle_returnsExpectedCard_andRelatedField
    // Match by title
    @Test
    func searchByTitleReturnsExpectedCardAndRelatedField() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "tienda" 
        view.title = true
        view.description = false
        view.url = false
        view.category = false
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(!results.isEmpty, "Expected at least one result for search text containing 'store' in the title.")
        
        let containsTarget = results.contains { $0.card.id == 1001 && $0.relatedFields.contains("titulo") }
        #require(containsTarget, "The result must include report 1001 and the related field 'titulo'.")
    }
    
    // MARK: search_byURL_returnsExpectedCards_andRelatedField
    // Match by URL
    @Test
    func searchByUrlReturnsExpectedCardsAndRelatedField() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "alertafraude.mx"
        view.title = false
        view.description = false
        view.url = true
        view.category = false
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(results.count >= 1, "Expected results when searching by URL domain.")
        #require(results.allSatisfy { $0.relatedFields.contains("url") }, "All URL matches must mark 'url' as the related field.")
    }
    
    // MARK: search_byCategory_returnsExpectedCards_andRelatedField
    // Match by category (Phishing)
    @Test
    func searchByCategoryReturnsExpectedCardsAndRelatedField() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "phishing"
        view.title = false
        view.description = false
        view.url = false
        view.category = true
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(!results.isEmpty, "Expected results when searching for the category 'Phishing'.")
        #require(results.allSatisfy { $0.relatedFields.contains("categoria") }, "Category matches must mark 'categoria' as the related field.")
    }
    
    // MARK: search_respectsFilters_whenTitleDisabled_noTitleOnlyMatches
    // Respecting filters: disabling title should exclude title-only matches
    @Test
    func searchRespectsFiltersWhenTitleDisabledNoTitleOnlyMatches() throws {
        var view = SearchView(selectedIndex: .constant(0))
        view.searchText = "tienda" 
        view.title = false
        view.description = false
        view.url = false
        view.category = false
        
        let results = view.searchCards(cards: ExampleCards.cards)
        #require(results.isEmpty, "With the 'title' filter disabled, there should be no title-only matches.")
    }
}