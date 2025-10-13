import Testing
@testable import AuthO

// MARK: - Tests to validate data used in charts

struct ChartsTests {
    // MARK: UsersDailyContributionView / ChartView.usersDailyContributions
    @Test
    func usersContributionHasSevenDaysIncreasingDatesAndValidCounts() throws {
        let data = ChartDataExamples.usersContribution
        #require(data.count == 7, "The user contribution series must have 7 days.")

        let ids = Set(data.map { $0.id })
        #require(ids.count == data.count, "Each data point must have a unique id.")
        
        let calendar = Calendar.current
        for (idx, point) in data.enumerated() {
            #require((1...10).contains(point.count), "Each bar must be within the range 1..10.")
            if idx > 0 {
                let prev = data[idx - 1].day
                #require(point.day > prev, "Dates must be in ascending order.")
                let comps = calendar.dateComponents([.day], from: prev, to: point.day)
                #require(comps.day == 1, "Each point must be separated by 1 day.")
            }
        }
    }
    
    // MARK: ReportLikesView / ChartView.mostLikedReport
    @Test
    func likedReportsIsNonEmptyHasMostLikedAndPercentWithinExpectedRange() throws {
        let reports = ChartDataExamples.likedReports
        #require(reports.count == 10, "There must be 10 reported pages for the likes chart.")
        let ids = Set(reports.map { $0.id })
        #require(ids.count == reports.count, "Each chart entry must have a unique id.")
        for item in reports {
            #require(!item.title.isEmpty, "Each entry must have a title.")
            #require((10...100).contains(item.likes), "The likes for each entry must be in the range 10..100.")
        }
        
        #require(ChartDataExamples.mostLikedReport != nil, "A report with the most likes must exist.")
        let totalLikes = reports.reduce(0) { $0 + $1.likes }
        #require(totalLikes > 0, "The sum of likes must be greater than 0.")
        #require(ChartDataExamples.mostLikedPercentaje > 0, "The percentage of the most liked must be greater than 0.")
        #require(ChartDataExamples.mostLikedPercentaje <= 10.0, "The calculated percentage of the most liked must be in 0..10 (based on current logic).")
        
        let computedMax = reports.max(by: { $0.likes < $1.likes })!
        #require(ChartDataExamples.mostLikedReport!.likes == computedMax.likes, "The 'mostLikedReport' element must match the maximum number of likes.")
    }
    
    // MARK: UserDailyContributionView / ChartView.userDailyContribution
    @Test
    func userContributionHasSevenDaysAndMostContributedMatchesMax() throws {
        let data = ChartDataExamples.userContribution
        #require(data.count == 7, "The user contribution series must have 7 days.")
        let ids = Set(data.map { $0.id })
        #require(ids.count == data.count, "Each data point must have a unique id.")

        for point in data {
            #require((1...10).contains(point.contributions), "Each bar must be within the range 1...10.")
        }
        
        let maxLocal = data.max(by: { $0.contributions < $1.contributions })!
        #require(ChartDataExamples.mostContributedDay.contributions == maxLocal.contributions, "The day with the most contributions must match the maximum found in the data.")
    }
    
    // MARK: UserDailyLikesView / ChartView.userDailyLikes
    @Test
    func userDailyLikesHasSevenPointsTotalMatchesSumAndValuesInRange() throws {
        let data = ChartDataExamples.userDailyLikes
        #require(data.count == 7, "The user daily likes series must have 7 points.")
        let ids = Set(data.map { $0.id })
        #require(ids.count == data.count, "Each data point must have a unique id.")

        for point in data {
            #require((1...10).contains(point.likes), "Each likes point must be within the range 1...10.")
        }

        let sum = data.reduce(0) { $0 + $1.likes }
        #require(ChartDataExamples.totalLikesReports == sum, "The sum of likes must match the calculated total for the header.")
    }
}