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
    
    @Published var event: Event = Event(name: "", date: Timestamp())
    @Published var eventName: String = ""
    
    
    func addEvent()
    {
        let newEvent = Event(name: eventName, date: Timestamp())
        let db = Firestore.firestore()
        
       
        db.collection("event").document("\(newEvent.id)").setData(newEvent.toDictionaryValues()) {
            err in
            if let error = err {
                print("ERROR saving data: \(error)")
            }
            print("Sucessfuly saved data")
        }

    }
    
}
