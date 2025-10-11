//
//  CategoryField.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct CategoryField<SideView: View>: View {
    let category: CategoryModel
    let sideView: SideView
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text("Categoría")
                .font(.caption)
                .foregroundStyle(.secondary)
            
            HStack{
                HStack(spacing: 5){
                    Image(systemName: category.icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 15, height: 15)
                    
                    Text(category.name)
                        .font(.footnote)
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 6)
                .overlay(
                    Capsule()
                        .stroke(lineWidth: 1)
                )
                .foregroundStyle(category.categoryColor)
                
                Spacer()
                
                sideView
            }
        }
    }
}

#Preview {
    CategoryField(category: ExampleCategories.all[0], sideView: EmptyView())
}
