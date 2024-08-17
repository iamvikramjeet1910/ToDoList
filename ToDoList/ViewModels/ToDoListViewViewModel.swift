//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Vikram Kumar on 16/08/24.
//

import FirebaseFirestore

import Foundation


// ViewModel for list of items views
//Primary tab

class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId : String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
