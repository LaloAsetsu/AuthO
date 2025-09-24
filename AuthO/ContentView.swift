//
//  ContentView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 22/09/25.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var sesion: SessionManager
    
    var body: some View {
        if(sesion.logged){
            MainTabView()
        } else {
            SignInView()
        }
        
    }
}


#Preview {
    
    ContentView()
}
