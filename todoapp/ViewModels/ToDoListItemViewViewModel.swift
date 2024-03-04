//
//  ToDoListItemViewViewModel.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//
import FirebaseFirestore
import Foundation
import FirebaseAuth

class ToDoListItemViewViewModel: ObservableObject{
    init(){
        
    }
    
    func toggleIsDone(item: ToDoListItem){
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(item.id)
            .setData(itemCopy.asDictionary())
        
    }
}
