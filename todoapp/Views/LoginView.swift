//
//  LoginView.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationStack{
            // Header

            VStack{
                HeaderView()
                // Form - email, password and button
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundStyle(.red)
                    }
                    TextField("Email Adress", text: $viewModel.email)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $viewModel.password)
                }
                .frame(height: 150)
                
                BigButton(title: "Let's Go") {
                    viewModel.login()
                }
                .frame(height: 75)
                .padding(.horizontal)
                // Footer - Sign Up
                VStack{
                    Text("New Account")
                    NavigationLink("Create New Account", destination: RegisterView())
                }
                .padding()
            }
        }
    }
}

#Preview {
    LoginView()
}
