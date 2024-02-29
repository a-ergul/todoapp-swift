//
//  RegisterViewViewModel.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func register(){
        guard validate() else {
            return
        }
    }
    
    private func validate() -> Bool {
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter required areas"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Email problems"
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Lütfen 6 veya daha fazla karakterli şifre belirlyin"
            return false
        }
        return true
    }
}
