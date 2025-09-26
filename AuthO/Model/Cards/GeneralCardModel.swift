//
//  GeneralCardModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import Foundation

struct CardModel: Codable, Identifiable {
    let id: Int
    let titulo: String
    let descripcion: String
    let url: String
    let imageUrl: String
    
    let user: UserModel
    let categoria: CategoryModel
    let creationDate: Date
    let status: String
    
    let likes: Int
    let comments: [ComentaryModel]
}
