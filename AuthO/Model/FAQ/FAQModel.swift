//
//  FAQModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 11/10/25.
//

import Foundation

struct FAQModel: Identifiable, Codable {
    let id: Int
    let question: String
    let description: String
}
