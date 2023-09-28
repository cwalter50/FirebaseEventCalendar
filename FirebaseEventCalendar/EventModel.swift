//
//  EventModel.swift
//  FirebaseEventCalendar
//
//  Created by Milo Woodman on 9/28/23.
//

import Foundation

struct Event {
    var name: String = ""
    var date: Double = 0
    
    let id = UUID().uuidString
}
