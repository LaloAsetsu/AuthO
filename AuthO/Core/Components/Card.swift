//
//  Card.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct Card<Content: View>: View{
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundStyle(Color(.systemBackground))
                .cornerRadius(10)
                .shadow(color: .gray.opacity(1), radius: 10, x:0, y:0)
            
            content
        }
    }
}
