import Testing
@testable import AuthO

// MARK: - Intentionally failing tests for charts

struct ChartsTestsFail {
    // MARK: usersContribution_shouldHave5Days_fails
    // generates 7 days, not 5
    @Test
    func usersContributionShouldHaveFiveDaysFails() throws {
        let data = ChartDataExamples.usersContribution
        #require(data.count == 5, "This test will fail: the series 'mistakenly' should have 5 days (but actually has 7).")
    }
    
    // MARK: likedReports_percentageAssumed0to100_fails
    // never exceeds 10
    @Test
    func likedReportsPercentageAssumedZeroToOneHundredFails() throws {
        #require(ChartDataExamples.mostLikedPercentaje > 10.0, "This test will fail: percentage should not be > 10 based on current logic (mostLikedPercentaje <= 10.0).")
    }
    
    // MARK: userDailyLikes_totalAssumedZero_fails
    // Fails because the sum of likes is the sum of 7 values 1...10, never 0
    @Test
    func userDailyLikesTotalAssumedZeroFails() throws {
        #require(ChartDataExamples.totalLikesReports == 0, "This test will fail: the sum of daily likes is not 0 (each day has 1..10 likes).")
    }
    
    // MARK: userContribution_maxAssumedZero_fails
    // the maximum contributions is never 0 (range 1...10)
    @Test
    func userContributionMaxAssumedZeroFails() throws {
        #require(ChartDataExamples.mostContributedDay.contributions == 0, "This test will fail: the day with the most contributions cannot be 0 (range is 1..10).")
    }
}