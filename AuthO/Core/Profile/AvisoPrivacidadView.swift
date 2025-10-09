//
//  AvisoPrivacidadView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 09/10/25.
//

import SwiftUI

struct AvisoPrivacidadView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                
                Image(systemName: "hand.raised.app.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.blue)
                    .padding(.top)
                
                
                Text("""
                En esta aplicación, tu privacidad es muy importante para nosotros. Queremos informarte de manera clara y sencilla cómo manejamos tus datos.

                • No recolectamos datos personales sensibles sin tu consentimiento explícito.

                • La información que proporcionas se utiliza únicamente para mejorar tu experiencia en la app.

                • No compartimos tus datos con terceros sin tu autorización.

                • Usamos tecnologías seguras para proteger la integridad de tu información.

                • Puedes solicitar la eliminación de tus datos en cualquier momento.

                Recuerda que al continuar usando esta aplicación, aceptas los términos descritos en este aviso de privacidad. Si tienes dudas, puedes contactarnos en cualquier momento.
                """)
                .multilineTextAlignment(.leading)
                .padding()
                
                Text("Gracias por confiar en nosotros.")
                    .padding()
                
                
                
            }
            .scrollIndicators(.hidden)
            .navigationTitle("Aviso de Privacidad")
        }
    }
}

#Preview {
    AvisoPrivacidadView()
}
