//
//  TodoListView.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import SwiftUI
import FirebaseFirestoreSwift

struct TodoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    
    init(userId:String){
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List(items) {
                    item in
                    Text(item.title)
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("Görevler")
            .toolbar{
                Button{
                    viewModel.showingNewItemView = true
                    // Create sheet
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    TodoListView(userId: "V1nOo88bv1VJ7LDH0L0Nk5YPTL12")
}
