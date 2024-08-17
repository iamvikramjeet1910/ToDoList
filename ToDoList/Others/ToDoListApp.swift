//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Vikram Kumar on 15/08/24.
//

import SwiftUI
import Firebase

@main
 struct ToDoListApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
