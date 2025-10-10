//
//  CategoryView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 10/10/25.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        
        VStack {
            Spacer()
                .frame(height: 70)
            Text("Titulo de la categoria")
                .font(.largeTitle)
            
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            Text("""
             Hola es es un texto largo
             asi muy largo
            """)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            .multilineTextAlignment(.leading)
            
            Spacer()
        }
        
    }
}

#Preview {
    CategoryView()
}
