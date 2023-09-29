//
//  ProfileView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        ScrollView {
            if let user = viewModel.user {
                ZStack {
                    Image("perfilbg")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    
                    VStack {//vstack todo da pag
                        Image("lucasprofile")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 152.0, height: 152.0)
                            .padding(.top, 37.0)
                            .padding(.bottom, 15.0)
                        VStack{
                            HStack {
                                Text(user.name)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                Image(systemName: "pencil.line")
                                    .font(.system(size: 28))
                                    .foregroundColor(Color.blue)
                            }
                            Text("Desenvolvedor")
                                .font(.title2)
                                .fontWeight(.light)
                            Text(user.email)
                                .font(.headline)
                                .fontWeight(.light)
                                .foregroundColor(Color.secondary)
                            
                            Text("Entrou no dia \(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                                .font(.headline)
                                .fontWeight(.light)
                                .foregroundColor(Color.secondary)
                            Button(action: {
                                viewModel.logOut()
                            }, label: {
                                Text("sign out")
                                    .tint(.red)
                            })
                        }
                        
                        
       
                    }
                    .padding(.bottom, 230.0)
                }//vstack geral da tela
                .navigationTitle("Perfil")
            } else {
                Text("Carregando perfil...")
            }
            
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
