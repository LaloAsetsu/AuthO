//
//  AuthOApp.swift
//  AuthO
//
//  Created by Leoni Bernabe on 22/09/25.
//

import SwiftUI

@main
struct AuthOApp: App {
    @StateObject var sesion = SessionManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
                    .environmentObject(sesion)
            }
        }
    }
}
