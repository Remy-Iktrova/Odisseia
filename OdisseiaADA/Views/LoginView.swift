//
//  LoginView.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                    Image ("login")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width)
                        .scaledToFit()
                        .edgesIgnoringSafeArea(.all)
                        
                    
                    Form {
                        
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage)
                                .foregroundColor(Color.red)
                        }
                        
                            Section(header: Text("Log in")) {
                                TextField("Endereço de e-mail", text: $viewModel.email)
                                    .autocapitalization(.none)
                                    .autocorrectionDisabled()
                                
                                SecureField("Senha", text: $viewModel.password)
                                    .autocapitalization(.none)
                                    .autocorrectionDisabled()
                                
                                ButtonView(action: {
                                    viewModel.login()
                                    
                                }, title: "Log in" , background: .blue)
                            }
                    }//fim do form
                    .frame(height: 200)
                    .scrollContentBackground(.hidden)
                    .padding(.horizontal, 16.0)
                    .cornerRadius(40)
                
                Spacer()
                   
                    VStack {
                        Text("É a sua primeira vez?")
                        NavigationLink("Crie uma conta.", destination: RegisterView())
                    }
                    .padding(.top, 8.0)
                    
                  
                  
                    
                    
                
            }//fim do vstack
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
