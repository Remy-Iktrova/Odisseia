//
//  HstacktodoViewViewModel.swift
//  OdisseiaADA
//
//  Created by Paulo Soledade on 19/09/23.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

class HstacktodoViewViewModel: ObservableObject{
    init(){}
    func toggleIsDone(item: TodoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
