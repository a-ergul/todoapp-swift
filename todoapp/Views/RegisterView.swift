//
//  RegisterView.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                //Register Form
                Form {
                    Section(header: Text("Register Form")){
                        if !viewModel.errorMessage.isEmpty {
                            Text(viewModel.errorMessage).foregroundStyle(.red)
                        }
                        TextField("Full Name", text: $viewModel.name)
                            .autocorrectionDisabled()
                        TextField("Email Adress", text: $viewModel.email)
                            .autocorrectionDisabled()
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        SecureField("Password", text: $viewModel.password)
                    }
                }
                .frame(height: 200)
                
                BigButton(title: "Register", action: {
                    viewModel.register()
                })
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
