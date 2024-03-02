//
//  User.swift
//  todoapp
//
//  Created by Alpay Ergül on 27.02.2024.
//

import Foundation

struct User: Codable{
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
