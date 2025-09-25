//
//  ReportCard.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct ReportCard: View {
    let report: CardModel
    
    let accepted = true
    
    var body: some View {
        Card {
            VStack(alignment: .leading){
                Text(report.titulo)
                    .font(.title.bold())
                
                Text(report.url)
                    .font(.caption)
                    .foregroundStyle(.blue)
                
                Text(report.descripcion)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                CategoryField(category: report.categoria, sideView: status)
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
    ReportCard(report: ExampleCards.cards.first!)
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
