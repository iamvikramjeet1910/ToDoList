//
//  User.swift
//  ToDoList
//
//  Created by Vikram Kumar on 16/08/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
