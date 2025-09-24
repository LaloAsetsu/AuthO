//
//  GeneralCardModel.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import Foundation

struct CardModel: Codable {
    let titulo: String
    let url: String
    let imageUrl: String
    let descripcion: String
    
    let categoria: CategoryModel
    let likes: Int
}
