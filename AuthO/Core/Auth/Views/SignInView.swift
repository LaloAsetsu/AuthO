//
//  SignInView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 23/09/25.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack{
            
            Image("logo")
                .frame(width: 200, height: 200)
                .scaledToFit()
                .padding(.top, 70)
            
            Card{
                VStack(alignment: .center){
                    HStack{
                        Text("Bienvenido a O-Fraud!")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Spacer()
                    }
                    
                    
                    VStack(spacing: 20){
                        CustonInputField(icon: "envelope", placeholder: "Correo electrónico", isSecure: false, text: $email)
                        
                        CustonInputField(icon: "lock", placeholder: "Password", isSecure: true, text: $password)
                    }
                    
                    Spacer()
                    
                    Button{
                        print("iniciando sesion")
                        
                    } label: {
                        Text("Iniciar sesión")
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
            .padding(.top, 40)
            
                            
            
            Spacer()
            
            
            AuthDestinationView {
                Text("¿Eres nuevo?")
                    .foregroundStyle(.white)
                
                NavigationLink{
                    SignUpView()
                        .toolbar(.hidden)
                } label: {
                    Text("Registrate")
                        .foregroundColor(.orange)
                        .underline()
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SignInView()
}
