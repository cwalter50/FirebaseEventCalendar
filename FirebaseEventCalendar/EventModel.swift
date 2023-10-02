//
//  EventModel.swift
//  FirebaseEventCalendar
//
//  Created by Milo Woodman on 9/28/23.
//

import Foundation
import Firebase

struct Event {
    var name: String = ""
    var date: Timestamp = Timestamp()
    
    let id = UUID().uuidString
    
    func toDictionaryValues() -> [String: Any]
    {
        return [
            "name": name,
            "date": date
        
        ]
    }
}
