//
//  FeedView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct FeedView: View {
    @Binding var selectedIndex: Int
    @State private var showAddReport: Bool = false
    @State private var selectedCategory: CategoryModel? = nil
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    Divider()
                        .padding(.top, 170)
                    
                    let filteredCards = selectedCategory == nil
                        ? ExampleCards.cards
                        : ExampleCards.cards.filter { $0.categoria == selectedCategory }
                    
                    ForEach(filteredCards, id: \.titulo) { card in
                        NormalReportCardView(
                                title: card.titulo,
                                url: card.url,
                                imageUrl: card.imageUrl,
                                description: card.descripcion,
                                likes: card.likes,
                                category: card.categoria
                            )
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                        
                    }
                    
                    Spacer()
                        .frame(height: 90)
                    
                }
                .navigationTitle("Feed")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            selectedIndex=0
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 35, height: 35)
                                
                        }
                        .tint(Color(.systemBlue))
                    }
                    
                    ToolbarItem(placement: .topBarTrailing){
                        CategoryMenuView(selectedCategory: $selectedCategory)
                        
                    }
                    
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            print("Crear Reporte")
                            showAddReport=true
                        } label: {
                            Image(systemName: "plus.circle")
                        }
                        .tint(Color(.systemBlue))
                    }
                }
            }
            .sheet(isPresented: $showAddReport) {
                AddReportView(showAddReport: $showAddReport)
            }
            .ignoresSafeArea()
        }
    }
}


#Preview {
    FeedView(selectedIndex: .constant(1))
}
