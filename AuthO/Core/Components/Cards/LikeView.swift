//
//  LikeView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 26/09/25.
//

import SwiftUI

struct LikeView: View {
    let likes: Int
    let onLike: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onLike) {
                Image(systemName: "hand.thumbsup")
            }
            Text("\(likes)")
        }
        .foregroundStyle(.gray)
    }
}

#Preview {
    LikeView(likes: 10){
        
    }
}
