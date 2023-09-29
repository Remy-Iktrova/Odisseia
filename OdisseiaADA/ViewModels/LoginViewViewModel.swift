//
//  LoginViewViewModel.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//
import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login(){
      
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
    private func validate() -> Bool {
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Por favor preencha todos os campos."
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Por favor preencha um e-mail valido."
            return false
        }
        
        return true
    }
    
    
}
