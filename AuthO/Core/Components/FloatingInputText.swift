//
//  FloatingInputText.swift
//  AuthO
//
//  Created by Leoni Bernabe on 26/09/25.
//

import SwiftUI

struct FloatingInputText: View {
    @Binding var text: String
    var onSend: () -> Void
    
    var body: some View {
        HStack(spacing: 8) {
            TextField("Escribe un comentario...", text: $text)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
            
            Button(action: {
                onSend()
            }) {
                Image(systemName: "paperplane.fill")
                    .resizable()
                    .foregroundStyle(.blue)
                    .frame(width: 25, height: 25)
            }
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 20)
        .background(.ultraThinMaterial)
//        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}


#Preview {
    FloatingInputText(text: .constant("")){
        
    }
}
