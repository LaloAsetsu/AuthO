//
//  SearchCardModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import Foundation

struct SearchCardModel: Codable {
    let card: CardModel
    let relatedFields: [String]
}
