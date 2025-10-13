import Testing
@testable import AuthO

// MARK: - Tests for recent reports (initial feed)

struct RecentReportsTests {
    // MARK: feed_defaultOrder_isOldestToNewest_andLastIsMostRecent
    // The ExampleCards array is ordered from oldest to newest.
    // Verify that the last one is the most recent and that the dates are in ascending order.
    @Test
    func feedDefaultOrderIsOldestToNewestAndLastIsMostRecent() throws {
        let cards = ExampleCards.cards
        #require(!cards.isEmpty, "At least one report must exist in the feed.")
        
        // Last element is the most recent
        let mostRecent = cards.max(by: { $0.creationDate < $1.creationDate })!
        #require(cards.last!.id == mostRecent.id, "The last element in the feed must be the most recent by creation date.")
        
        // Ascending order by date (oldest -> newest)
        for i in 1..<cards.count {
            #require(cards[i - 1].creationDate <= cards[i].creationDate, "The feed must be ordered from oldest to newest.")
        }
    }

    // MARK: top3RecentReports_matchLast3FromFeed
    // The top 3 most recent reports by date must match the last 3 in the feed.
    @Test
    func topThreeRecentReportsMatchLastThreeFromFeed() throws {
        let cards = ExampleCards.cards
        #require(cards.count >= 3, "At least 3 reports are required for this validation.")
        
        let top3ByDateDesc = Array(cards.sorted { $0.creationDate > $1.creationDate }.prefix(3))
        let last3FromFeed = Array(cards.suffix(3))
        
        let expectedIds = Set(top3ByDateDesc.map { $0.id })
        let lastIds = Set(last3FromFeed.map { $0.id })
        #require(expectedIds == lastIds, "The 3 most recent reports must match the last 3 reports in the feed.")
        
        // The absolute most recent report must be the last one in the feed
        #require(top3ByDateDesc.first!.id == cards.last!.id, "The most recent report must be the last one in the feed.")
    }
}