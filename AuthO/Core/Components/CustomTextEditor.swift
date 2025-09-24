//
//  CustomTextEditor.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import SwiftUI

struct CustomTextEditor: View {
    let placeholder: String
    let maxCharacters: Int
    @Binding var text: String
    
    
    var body: some View {
        ZStack (alignment: .topLeading){
            TextEditor(text: $text)
                .padding(4)
                .onChange(of: text) { oldValue, newValue in
                    if newValue.count > maxCharacters {
                        
                        text = String(newValue.prefix(maxCharacters))
                    }
                }
            
            
            if(text.isEmpty){
                Text(placeholder)
                    .foregroundStyle(.gray)
                    .padding(.top, 15)
                    .padding(.leading, 11)
            }
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("\(text.count)/\(maxCharacters) caracteres")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .padding(6)
                }
            }
            
            
        }
    }
}

#Preview {
    CustomTextEditor(placeholder: "Descripción", maxCharacters: 40, text: .constant(""))
}
