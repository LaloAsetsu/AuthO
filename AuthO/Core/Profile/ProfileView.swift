//
//  ProfileView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var sesion: SessionManager
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView {
                    
                Divider()
                    .padding(.top, 170)
                
                headerView
                
                VStack(alignment: .leading){
                    
                    Text("Reportes")
                    .font(.callout)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)
            
                    ForEach(ExampleCards.cards, id: \.titulo) { card in
                        ReportCard(report: card)
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                    }
                    
                    Spacer()
                        .frame(height: 90)
                    
                }
                .padding(.horizontal)
                .padding(.top)
                    
                }
                .scrollIndicators(.hidden)
                    
            }
            .navigationTitle("O-Fraud")
            .navigationBarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        print("saliendo")
                        sesion.logged = false
                        
                    } label: {
                        Image(systemName: "door.right.hand.open")
                    }
                    .tint(.red)
                }
            }
            .ignoresSafeArea()
        }
        
    }
}

#Preview {
    ProfileView()
}

extension ProfileView {
    var headerView: some View {
        Group{
            Circle()
                .frame(width: 120, height: 120)
                .padding(.top, 20)
            
            Text("Eduardo Antonio Mora Sanchez")
                .font(.title3)
                .padding(.top, 20)
            
            VStack(alignment: .center){
                HStack(spacing: 25){
                    VStack{
                        Text("8")
                        Text("Reportes")
                        Text("Totales")
                    }
                    
                    Divider()
                        .frame(height: 60)
                    
                    VStack{
                        Text("8")
                        Text("Reportes")
                        Text("Totales")
                    }
                    
                    Divider()
                        .frame(height: 60)
                    
                    VStack{
                        Text("8")
                        Text("Reportes")
                        Text("Totales")
                    }
                }
                
                Divider()
                    .padding(.horizontal, 25)
                    .foregroundStyle(.blue)
            }
            .foregroundStyle(.gray)
        }
    }
    
}
