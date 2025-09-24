//
//  CategoryField.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct CategoryField<SideView: View>: View {
    let categoryName: String
    let icon: String
    let color: Color
    let sideView: SideView
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Categorías")
                .font(.caption)
                .foregroundStyle(.secondary)
            
            HStack{
                HStack(spacing: 5){
                    Image(systemName: icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    
                    Text(categoryName)
                        .font(.footnote)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
                .overlay(
                    Capsule()
                        .stroke(lineWidth: 1)
                )
                .foregroundStyle(color)
                
                Spacer()
                
                sideView
            }
        }
    }
}

#Preview {
    CategoryField(categoryName: "Casa", icon: "house", color: .green, sideView: EmptyView())
}
