//
//  EventModel.swift
//  FirebaseEventCalendar
//
//  Created by Milo Woodman on 9/28/23.
//

import Foundation
import Firebase

struct Event: Identifiable {
    var name: String = ""
    var date: Timestamp = Timestamp()
    
    var id: String
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        let date = Date(timeIntervalSince1970: Double(self.date.seconds))
        
        let timeString = dateFormatter.string(from: date)
        
        return timeString
    }
    
    init(name: String, date: Timestamp) {
        self.name = name
        self.date = date
        self.id = UUID().uuidString
    }
    
    init(snapshot :QueryDocumentSnapshot) {
        
        let data = snapshot.data()
        self.name = data["name"] as? String ?? ""
        self.date = data["date"] as? Timestamp ?? Timestamp()
        self.id = snapshot.documentID
        
    }
    
    func toDictionaryValues() -> [String: Any]
    {
        return [
            "name": name,
            "date": date
        
        ]
    }
    
    static let MOCK_EVENTS: [Event] = [
        Event(name: "ESports", date: Timestamp()),
        Event(name: "Robotics", date: Timestamp()),
        Event(name: "Basketball", date: Timestamp())
        
    
    ]
}
