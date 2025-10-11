//
//  FAQsView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 11/10/25.
//

import SwiftUI

struct FAQsView: View {
    var body: some View {
        ScrollView {
            Divider()
                .frame(height: 30)
            ForEach(FAQsExample.all, id: \.id){ faq in
                FAQView(faq: faq)
                    .padding(.vertical, 7)
                    .padding(.horizontal)
            }
            
        }
        .navigationTitle("Preguntas Frecuentes")
    }
}

#Preview {
    NavigationStack{
        FAQsView()
    }
}
