//
//  RegisterView.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView()
                //Register Form
                Form {
                    Section(header: Text("Register Form")){
                        TextField("Full Name", text: $name)
                            .autocorrectionDisabled()
                        TextField("Email Adress", text: $email)
                            .autocorrectionDisabled()
                            .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        SecureField("Password", text: $password)
                    }
                }
                .frame(height: 200)
                
                BigButton(title: "Register", action: {})
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
