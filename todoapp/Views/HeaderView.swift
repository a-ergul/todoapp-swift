//
//  HeaderView.swift
//  todoapp
//
//  Created by Alpay Ergül on 28.02.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Text("Todo App")
            .font(.system(size: 40))
            .foregroundColor(.orange)
            .fontWeight(.black)
            .padding(.top, 10)
        ZStack{
            
            Image("logo-png").resizable()
                .frame(width: 150, height: 250)

        }    }
}

#Preview {
    HeaderView()
}
