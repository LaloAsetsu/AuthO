//
//  UploadProfilePhotoView.swift
//  AuthO
//
//  Created by Leoni Bernabe on 09/10/25.
//

import SwiftUI
import PhotosUI

struct UploadProfilePhotoView: View {
    @State private var photoPickerItem: PhotosPickerItem?
    @State private var image: UIImage?
    
    var body: some View {
        VStack{
            header
            
            PhotosPicker(selection: $photoPickerItem, matching: .images) {
                if let profileImage = image {
                    Image(uiImage: profileImage)
                        .resizable()
                        .modifier(ProfileImageModifier())
                    
                } else {
                    Image("add_photo")
                        .resizable()
                        .renderingMode(.template)
                        .modifier(ProfileImageModifier())
                }
            }
            .frame(height: 350)
            
            Button {
                // nada
                
            } label: {
                Text("Continue")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(width: 300, height: 50)
                    .background((image==nil) ? .gray : Color(.systemOrange))
                    .clipShape(Capsule())
                    .padding()
            }
            .shadow(color: .gray.opacity(0.5), radius: 10, x:0, y:0)
            .disabled(image==nil)
            
            Spacer()
        }
        .onChange(of: photoPickerItem) { _, newItem in
            Task {
                if let data = try? await newItem?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    image = uiImage
                }
            }
        }
        .ignoresSafeArea(edges: .all)
        
        
    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundStyle(
                LinearGradient(
                    colors: [Color(.systemYellow), Color(.systemOrange)],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .frame(width: 250, height: 250)
            .clipShape(Circle())
    }
}


#Preview {
    UploadProfilePhotoView()
}

extension UploadProfilePhotoView {
    var header: some View {
        VStack(alignment: .leading) {
            Text("Selecciona una ")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("foto de perfil! ")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            HStack{
                Spacer()
            }
            
        }
        .frame(height: 260)
        .padding(.leading)
        .background(
            LinearGradient(
                colors: [Color(.systemOrange), Color(.systemYellow)],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .foregroundStyle(.white)
        .clipShape(RoundedShape(corners: [.bottomRight], cornerRadius: 80))
    }
}
