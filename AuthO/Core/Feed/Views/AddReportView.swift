//
//  AddReportView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 24/09/25.
//

import SwiftUI

struct AddReportView: View {
    @Binding var showAddReport: Bool
    @State private var title: String = ""
    @State private var imageURL: String = ""
    @State private var description: String = ""
    @State private var category: CategoryModel?
    
    var body: some View {
        NavigationView {
            Form{
                Section("Titulo"){
                    TextField("Titulo", text: $title)
                }
                
                Section("Imágen"){
                    Button{
                        print("Seleccionando imagen")
                    } label : {
                        HStack {
                            Spacer()
                            Image(systemName: "photo.badge.plus")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                                .foregroundStyle(.gray)
                            Spacer()
                        }
                    }
                    
                }
                .listRowBackground(Color.clear)
                
                Section("Descripción"){
                    CustomTextEditor(placeholder: "Descripción", maxCharacters: 40, text: $description)
                        .frame(height: 150)
                        
                }
                
                Section("Categoría"){
                    HStack{
                        Text("Categoria")
                        Spacer()
                        
                        CategoryMenuView(selectedCategory: $category)
                    }
                }
                
            }
            .navigationTitle("Registrar Nuevo Reporte")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showAddReport = false
                    } label: {
                        Text("Cancel")
                    }
                    .tint(Color(.systemBlue))
                }
                
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        print("registrando reporte")
                        showAddReport = false
                    } label: {
                        Text("Add")
                    }
                    .tint(Color(.systemBlue))
                }
            }
        }
    }
}

#Preview {
    AddReportView(showAddReport: .constant(true))
}

extension AddReportView {
    func shouldDisable(_ text: String) -> Bool {
        let words = text.split { $0.isWhitespace || $0.isNewline }
        return words.count >= 5 // for example, disable if >= 50 words
    }
}
