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
    
    
    init(){}
}
