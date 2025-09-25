//
//  CategoryModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import Foundation
import SwiftUI

struct CategoryModel: Codable, Equatable {
    let id: Int
    let name: String
    let icon: String
    
    var categoryColor: Color {
        if let category = CategoryColor(rawValue: id) {
            return category.color
        }
        
        return Color.gray // default color
    }
}

enum CategoryColor: Int, CaseIterable {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
    case five = 5
    case six = 6
    case seven = 7

    var color: Color {
        switch self {
        case .one: return .red
        case .two: return .blue
        case .three: return .green
        case .four: return .orange
        case .five: return .purple
        case .six: return .mint
        case .seven: return .pink
        }
    }
}
