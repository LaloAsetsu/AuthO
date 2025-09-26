//
//  CommentsView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 26/09/25.
//

import SwiftUI

struct CommentsView: View {
    let comments: Int
    let onComment: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onComment) {
                Image(systemName: "bubble")
            }
            Text("\(comments)")
        }
        .foregroundStyle(.gray)
    }
}

#Preview {
    CommentsView(comments: 40){
        
    }
}
