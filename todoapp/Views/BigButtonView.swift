//
//  BigButtonView.swift
//  todoapp
//
//  Created by Alpay Ergül on 28.02.2024.
//

import SwiftUI

struct BigButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(.orange)
                Text(title)
                    .foregroundStyle(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
            }
        })
        .frame(height: 50)
        .padding(.horizontal)
    }
}

#Preview {
    BigButton(title: "Button Title", action: {})
}
