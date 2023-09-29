//
//  RegisterView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        
        ZStack {
            Image("bgregister")
                .resizable()
                .frame(width: UIScreen.main.bounds.width)
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            
            VStack (spacing:UIScreen.main.bounds.height * 0.20) {
                
                    Text("Comece a sua jornada\nAcademy do jeito certo.")
                    .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.horizontal, 16)
                        .padding(.top, 64.0)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                
                        
                    
                    
                    
                    ZStack {
                        Form {
                                Section(header: Text("Cadastro")) {
                                    TextField("Nome", text: $viewModel.name)
                                        .autocapitalization(.none)
                                        .autocorrectionDisabled()
                                    
                                    TextField("Endereço de e-mail", text: $viewModel.email)
                                        .autocapitalization(.none)
                                        .autocorrectionDisabled()
                                    
                                    SecureField("Senha", text: $viewModel.password)
                                        .autocapitalization(.none)
                                        .autocorrectionDisabled()
                                    
                                    ButtonView(action: {viewModel.register()}, title: "Criar conta" , background: .blue)
                                }
                        }
                        .frame(height: 275)
                        .scrollContentBackground(.hidden)
                    .padding(.horizontal, 16.0)
                    }
                    .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                    .cornerRadius(16)
                    .padding(.horizontal, 32.0)
                    
                    Spacer()
                    
                    
         
            }
        }
        }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
