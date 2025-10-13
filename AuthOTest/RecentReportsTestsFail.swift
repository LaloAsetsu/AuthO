import Testing
@testable import AuthO

// MARK: - Intentionally failing tests for recent reports (feed)

struct RecentReportsTestsFail {
    // MARK: feed_expectedNewestFirst_andFirstIsMostRecent_fails
    // Fails because the current implementation does not place the newest report at the beginning,
    // but rather at the end of the array (oldest -> newest).
    @Test
    func feedExpectedNewestFirstAndFirstIsMostRecentFails() throws {
        let cards = ExampleCards.cards
        #require(!cards.isEmpty, "At least one report must exist in the feed.")
        
        let mostRecent = cards.max(by: { $0.creationDate < $1.creationDate })!
        #require(cards.first!.id == mostRecent.id, "This test will fail: the current feed does NOT start with the most recent report.")
        
        // Also force strict descending order by date (newest -> oldest)
        for i in 1..<cards.count {
            #require(cards[i - 1].creationDate >= cards[i].creationDate, "This test will fail: descending order (newest->oldest) is assumed.")
        }
    }
    
    // MARK: top3RecentReports_matchFirst3FromFeed_fails
    // Fails because the top 3 most recent reports do NOT match the first 3 reports in the current feed,
    // but rather the last 3.
    @Test
    func topThreeRecentReportsMatchFirstThreeFromFeedFails() throws {
        let cards = ExampleCards.cards
        #require(cards.count >= 3, "At least 3 reports are required for this validation.")
        
        let top3ByDateDesc = Array(cards.sorted { $0.creationDate > $1.creationDate }.prefix(3))
        let first3FromFeed = Array(cards.prefix(3))
        
        let expectedIds = Set(top3ByDateDesc.map { $0.id })
        let firstIds = Set(first3FromFeed.map { $0.id })
        #require(expectedIds == firstIds, "This test will fail: the top 3 recent reports do not match the first 3 in the feed.")
        
        // And the absolute most recent report is assumed to be the first (this will also fail)
        #require(top3ByDateDesc.first!.id == cards.first!.id, "This test will fail: the most recent report is not the first one in the feed.")
    }
}