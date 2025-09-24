//
//  ReportCard.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct ReportCard: View {
    let title = "Hogar Limpio"
    let url = "www.hogarLimpio.com"
    let description = "Esta página anuncia una licuadora multifuncional con varias velocidades y vaso de vidrio resistente, pero cuando llega el pedido solo es una licuadora de plástico pequeña y frágil, muy diferente a lo mostrado."
    
    let category = "Casa"
    let icon = "house"
    
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
                
                CategoryField(categoryName: "Casa", icon: "house", color: .green, sideView: status)                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .frame(width: 380)
        .frame(maxHeight: 280)
    }
}

#Preview {
    ReportCard()
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
