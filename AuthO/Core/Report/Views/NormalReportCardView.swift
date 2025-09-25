//
//  NormalReportCardView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

import Kingfisher

struct NormalReportCardView: View {
    let report: CardModel
    
    var body: some View {
        Card {
            VStack(alignment: .leading){
                Text(report.titulo)
                    .font(.title.bold())
                
                Text(report.url)
                    .font(.caption)
                    .foregroundStyle(.blue)
                
                KFImage(URL(string: report.imageUrl)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 340, height: 170)
                    .clipped()
                    .clipShape(
                        RoundedRectangle(cornerRadius: 5, style: .continuous)
                    )
                    .shadow(color: .gray.opacity(80), radius: 5, x:0, y:0)
                    .padding(.top, 5)
                
                Text(report.descripcion)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 5)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                CategoryField(category: report.categoria, sideView: likeView)
                
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .frame(width: 380)
        .frame(maxHeight: 450)
    }
}

extension NormalReportCardView {
    var likeView: some View {
        HStack{
            Button{
                print("le diste like")
            } label: {
                Image(systemName: "hand.thumbsup")
            }
            .foregroundStyle(.black)
            
            Text("\(report.likes)")
        }
    }
}
