//
//  CustomInputField.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct CustonInputField: View {
    let icon: String
    let placeholder: String
    let isSecure: Bool
    
    @Binding var text: String
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.gray))
                
                Group{
                    if isSecure {
                        SecureField(placeholder, text: $text)
                    } else {
                        TextField(placeholder, text: $text)
                    }
                }
                .font(.default)
            }
            Divider()
        }
        
    }
}
