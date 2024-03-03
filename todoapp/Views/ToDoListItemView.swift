//
//  ToDoListItemView.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    let item: ToDoListItem
    var body: some View {
        HStack{
            
            VStack(alignment: .leading){
                Text(item.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date:.abbreviated, time:.shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(
        id: "123",
        title: "Abone Ol",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: false))
}
