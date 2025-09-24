//
//  SignUpView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct SignUpView: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack{
            
            Image("logo")
                .frame(width: 200, height: 200)
                .scaledToFit()
                .padding(.top, 70)
            
            Card{
                VStack(alignment: .center){
                    HStack{
                        Text("Crea tu cuenta!")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    
                    
                    VStack(spacing: 20){
                        CustonInputField(icon: "person", placeholder: "Nombre de Usuario", isSecure: false, text: $username)
                        
                        CustonInputField(icon: "envelope", placeholder: "Correo electrónico", isSecure: false, text: $email)
                        
                        CustonInputField(icon: "lock", placeholder: "Password", isSecure: true, text: $password)
                    }
                    
                    
                    Spacer()
                    
                    Button{
                        print("Registrandose")
                        
                    } label: {
                        Text("Registrarme")
                            .font(.headline)
                            .foregroundStyle(.white)
                            .frame(width: 300, height: 50)
                            .background(Color(.systemOrange))
                            .clipShape(Capsule())
                            .padding()
                    }
                }
                .padding()
            }
            .frame(width: 350, height: 250)
            .padding(.top, 50)
            
                            
            
            Spacer()
            
            
            AuthDestinationView {
                Text("¿Ya tienes cuenta?")
                    .foregroundStyle(.white)
                
                Button{
                    dismiss()
                } label: {
                    Text("Iniciar Sesion")
                        .foregroundColor(.orange)
                        .underline()
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignUpView()
}
