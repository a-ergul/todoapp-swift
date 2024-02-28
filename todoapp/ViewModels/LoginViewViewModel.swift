//
//  LoginViewViewModel.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import Foundation

class LoginViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    
    init(){}
    
    func login(){
        errorMessage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty
        else {
            errorMessage = "Please fill in all fields"
            return
        }
        
        guard email.contains("@") && email.contains(".") else{
            errorMessage = "Enter a valid email address"
            return
        }
    }
    
    func validate(){}
}
