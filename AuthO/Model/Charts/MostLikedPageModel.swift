//
//  MostLikedPageModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 29/09/25.
//

import Foundation
import SwiftUI

struct MostLikedPageModel: Codable, Identifiable {
    var id = UUID()
    let title: String
    let likes: Int
}
