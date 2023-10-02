//
//  AddEventViewModel.swift
//  FirebaseEventCalendar
//
//  Created by Christopher Walter on 10/2/23.
//

import Foundation
import Firebase
import SwiftUI

class AddEventViewModel: ObservableObject {
    
    @Published var event: Event = Event()
    @Published var eventName: String = ""
    
    
    func addEvent()
    {
        let newEvent = Event(name: eventName, date: Timestamp())
        let db = Firestore.firestore()
        
        let data: [String: Any] = ["name": newEvent.name, "date": newEvent.date]
        db.collection("event").document("\(newEvent.id)").setData(data) {
            err in
            if let error = err {
                print("ERROR saving data: \(error)")
            }
            print("Sucessfuly saved data")
        }
//        // Add a new document in collection "cities"
//        db.collection("cities").document("LA").setData([
//            "name": "Los Angeles",
//            "state": "CA",
//            "country": "USA"
//        ]) { err in
//            if let err = err {
//                print("Error writing document: \(err)")
//            } else {
//                print("Document successfully written!")
//            }
//        }
    }
    
}
