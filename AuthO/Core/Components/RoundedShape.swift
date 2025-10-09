//
//  RoundedShape.swift
//  AuthO
//
//  Created by Leoni Bernabe on 09/10/25.
//

import Foundation
import SwiftUI

struct RoundedShape: Shape {
    var corners: UIRectCorner
    let cornerRadius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        
        return Path(path.cgPath)
    }
}
