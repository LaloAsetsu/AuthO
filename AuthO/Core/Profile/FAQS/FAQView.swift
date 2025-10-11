//
//  FAQView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 11/10/25.
//

import SwiftUI

struct FAQView: View {
    var faq: FAQModel
    
    var body: some View {
        Card{
            VStack(alignment: .leading, spacing: 8){
                Text(faq.question)
                    .font(Font.title2)
                    .fontWeight(.semibold)
                
                Divider()
                
                Text(faq.description)
                    .font(.default)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}

#Preview {
    FAQView(faq: FAQModel(id: 1, question: "Whats up?", description: "Great"))
}
