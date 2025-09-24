//
//  MainTabView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct MainTabView: View {
    @State var selectedIndex: Int = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            ProfileView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(0)
            
            FeedView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "text.document")
                }
                .tag(1)
            
            ChartView()
                .onTapGesture {
                    selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "chart.pie")
                }
                .tag(2)
            
            SearchView()
                .onTapGesture {
                    selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
                .tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
