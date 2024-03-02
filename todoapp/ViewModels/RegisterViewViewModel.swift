//
//  RegisterViewViewModel.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject{
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func register(){
      
        guard validate() else{
            print ("validate error")
            return
        }
        
           Auth.auth().createUser(withEmail: email, password: password){ [weak self] result, error in
                   guard let userId = result?.user.uid else{
                       print("aa")
                       return
                   }
                   
                   // insert metodu çağırılacak
                   self?.insertUserRecord(id: userId)
               }
           }
    
    private func insertUserRecord(id: String) {
        let newUser = User(id: id, name: name, email: email, joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMessage = "Please enter required areas"
            return false
        }
        
        
        guard password.count >= 6 else {
            errorMessage = "Lütfen 6 veya daha fazla karakterli şifre belirlyin"
            return false
        }
        return true
    }
}
