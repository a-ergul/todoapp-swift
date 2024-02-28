//
//  todoappApp.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//
import FirebaseCore
import SwiftUI


@main
struct todoappApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
