//
//  ReportCard.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct ReportCard: View {
    let title: String
    let url: String
    let description: String
    
    let category: CategoryModel
    
    let accepted = true
    
    var body: some View {
        Card {
            VStack(alignment: .leading){
                Text(title)
                    .font(.title.bold())
                
                Text(url)
                    .font(.caption)
                    .foregroundStyle(.blue)
                
                Text(description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                CategoryField(categoryName: category.name, icon: category.icon, color: category.categoryColor, sideView: status)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .frame(width: 380)
        .frame(maxHeight: 280)
    }
}

let category = "Casa"
let icon = "house"
#Preview {
    ReportCard(title: "Hogar Limpio", url: "www.hogarLimpio.com", description: "Esta", category: CategoryModel(id: 1, name: "House", icon: "house"))
}


extension ReportCard {
    var status: some View {
        if accepted {
            Image(systemName: "checkmark.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundStyle(.green)
            
        } else {
            Image(systemName: "x.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundStyle(.red)
        }
    }
}
