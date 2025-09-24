//
//  SearchReportCardView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

import Kingfisher

struct SearchReportCardView: View {
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
                
                KFImage(URL(string: "https://53.fs1.hubspotusercontent-na1.net/hub/53/hubfs/Telerik.webp?width=650&height=409&name=Telerik.webp")!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 340, height: 170)
                    .clipped()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                    )
                    .shadow(color: .gray.opacity(80), radius: 5, x:0, y:0)
                    .padding(.top, 5)
                
                Text(description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                CategoryField(categoryName: "Casa", icon: "house", color: .green, sideView: EmptyView())
                
                VStack(alignment: .leading, spacing: 4){
                    Text("Campos Encontrados")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    
                    HStack{
                        filter
                        filter
                        
                        Spacer()
                    }
                }
                .padding(.top, 5)
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .frame(width: 380)
        .frame(maxHeight: 500)
    }
}

#Preview {
    SearchReportCardView()
}

extension SearchReportCardView {
    
    var filter: some View {
        HStack{
            Text(category)
                .font(.footnote)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 6)
        .overlay(
            Capsule()
                .stroke(lineWidth: 1)
        )
        .foregroundStyle(.gray)
    }
}

