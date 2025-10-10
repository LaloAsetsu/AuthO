//
//  CategoriesView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 10/10/25.
//

import SwiftUI

struct CategoriesView: View {
    let items = ["Uno", "Dos", "Tres", "Cuatro", "Cinco", "Seis", "Siete"]
    let categories = ExampleCategories.all
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            Spacer()
                .frame(height: 20)
            LazyVGrid(columns: columns, spacing: 30) {
                ForEach(categories, id: \.id) { category in
                    
                    Button {
                        print("Desciption for \(category.name)")
                        
                    } label: {
                        categoryView(for: category)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Categorías")
    }
}

#Preview {
    NavigationStack {
        CategoriesView()
    }
}

extension CategoriesView {
    func categoryView(for category: CategoryModel) -> some View {
        HStack {
            HStack(spacing: 5) {
                Image(systemName: category.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 24)

                Text(category.name)
                    .font(.default)
            }
            .frame(width: 175, height: 70, alignment: .center)
            .background(
                Capsule()
                    .fill(.thickMaterial)
            )
            .overlay(
                Capsule()
                    .stroke(lineWidth: 1)
                    .shadow(radius: 5)
            )
            .shadow(color: category.categoryColor.opacity(0.3), radius: 4, x: 0, y: 2)
            .foregroundStyle(category.categoryColor)
        }
    }
}
