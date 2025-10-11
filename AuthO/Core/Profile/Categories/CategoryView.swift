//
//  CategoryView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 10/10/25.
//

import SwiftUI

struct CategoryView: View {
    let category: CategoryModel
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            Text(category.name)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Image(systemName: category.icon)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundStyle(category.categoryColor)
            
            
            
            Text(category.description)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .multilineTextAlignment(.center)
            
            Spacer()
        }
        
    }
}

#Preview {
    CategoryView(category: ExampleCategories.all[0])
}
