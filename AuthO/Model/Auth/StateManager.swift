//
//  StateManager.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import Combine
import SwiftUI


class SessionManager: ObservableObject {
    @Published var logged: Bool
    
    init(){
        logged = false
    }
}

