//
//  UserDailyContributionModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 29/09/25.
//

import Foundation

struct UserDailyContributionModel: Codable, Identifiable {
    var id = UUID()
    let day: Date
    let contributions: Int
}
