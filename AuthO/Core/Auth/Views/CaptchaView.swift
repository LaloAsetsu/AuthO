//
//  CaptchaView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 08/10/25.
//

import SwiftUI

struct CaptchaView: View {
    @Binding var done: Bool
    @State private var number = Int.random(in: 1000...9999)

    // Campos individuales para cada dígito
    @State private var input1 = ""
    @State private var input2 = ""
    @State private var input3 = ""
    @State private var input4 = ""
    
    // Focus para cambiar de campo automáticamente
    enum Field: Hashable {
        case input1, input2, input3, input4
    }
    
    @FocusState private var focusedField: Field?

    var body: some View {
        VStack {
            Spacer()
                .frame(height: 150)
//            Text("Captcha")
//                .font(.system(size: 60))
////                .fontWeight(.light)
//                .padding(.vertical, 50)
            
            
            Text("\(String(number))")
                .font(.system(size: 60))
                .padding()

            // Input de 4 dígitos
            HStack(spacing: 10) {
                digitField($input1, field: .input1, next: .input2)
                digitField($input2, field: .input2, next: .input3)
                digitField($input3, field: .input3, next: .input4)
                digitField($input4, field: .input4, next: nil)
            }
            
            Text("Ingresa los números que ves en la imagen")
                .font(.callout)
                .foregroundStyle(Color(.secondaryLabel))
                .padding()
            
            Spacer()
                .frame(height: 80)
            
            Button {
                let input = input1 + input2 + input3 + input4
                if input == String(number) {
                    done = true
                } else {
                    
                    number = Int.random(in: 1000...9999)
                    clearInputs()
                }
                
            } label : {
                Text("Listo")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(.systemOrange))
                    .clipShape(Capsule())
                    .padding()
            }

            Spacer()
        }
        .padding()
        .onAppear {
            focusedField = .input1
        }
    }

    // Función auxiliar para crear un campo de un solo carácter
    func digitField(_ binding: Binding<String>, field: Field, next: Field?) -> some View {
        TextField("", text: binding)
            .keyboardType(.numberPad)
            .frame(width: 50, height: 60)
            .font(.largeTitle)
            .multilineTextAlignment(.center)
            .background(Color.gray.opacity(0.1))
            .cornerRadius(8)
            .focused($focusedField, equals: field)
            .onChange(of: binding.wrappedValue) { newValue in
                if newValue.count > 1 {
                    binding.wrappedValue = String(newValue.prefix(1))
                }
                if newValue.count == 1 {
                    if let nextField = next {
                        focusedField = nextField
                    } else {
                        focusedField = nil
                    }
                }
            }
//            .disabled(binding.wrappedValue.count == 1)
    }

    func clearInputs() {
        input1 = ""
        input2 = ""
        input3 = ""
        input4 = ""
        focusedField = .input1
    }
}

#Preview {
    CaptchaView(done: .constant(false))
}
