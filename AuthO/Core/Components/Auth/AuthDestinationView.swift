//
//  AuthDestinationView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct AuthDestinationView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View{
        VStack (alignment: .center){
            HStack{
                Spacer()
            }
            
            HStack{
                content
            }
            
            Spacer()
            
        }
        .frame(height: 70)
        .padding(.leading)
        .background(
            Color.myBlue
        )
        .foregroundStyle(.white)
    }
}
