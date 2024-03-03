//
//  TodoListView.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import SwiftUI

struct TodoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    
    // call userId
    private let userId: String
    
    init(userId:String){
        self.userId = userId
    }
    var body: some View {
        NavigationView{
            VStack{
                
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
    TodoListView(userId: "123123")
}
