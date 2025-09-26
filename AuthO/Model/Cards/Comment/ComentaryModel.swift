//
//  ComentaryModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 26/09/25.
//

import Foundation

struct ComentaryModel: Codable {
    let user: UserModel
    let content: String
    let createdAt: Date
    
    let likes: Int
    let Comments: [ComentaryModel]
}
