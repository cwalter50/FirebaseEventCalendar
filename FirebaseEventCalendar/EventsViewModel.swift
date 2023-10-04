//
//  EventsViewModel.swift
//  FirebaseEventCalendar
//
//  Created by Christopher Walter on 10/4/23.
//

import Foundation
import Firebase
import SwiftUI

class EventsViewModel: ObservableObject {
    
    @Published var events: [Event] = []
    
    func loadAllEvents()
    {
        let db = Firestore.firestore().collection("event")
        
        db.getDocuments { snapshot, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let snap = snapshot else { return }
            self.events = []
            for doc in snap.documents {
                let newEvent = Event(snapshot: doc)
                self.events.append(newEvent)
            }
            
            self.events.sort(by: {$0.date.seconds < $1.date.seconds})
            
            
        }
    }
    
    
    
    
    
}

