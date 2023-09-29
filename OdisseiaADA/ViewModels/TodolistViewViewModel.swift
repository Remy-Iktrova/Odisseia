//
//  TodolistViewViewModel.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//
import FirebaseFirestore
import Foundation

class TodolistViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    init(userId: String){
        self.userId = userId
    }
    func delete(id: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document("BDRAVjGfyGVle0YwHVmwgnpRqoo1")
            .collection("todos")
            .document(id)
            .delete()
    }
}
