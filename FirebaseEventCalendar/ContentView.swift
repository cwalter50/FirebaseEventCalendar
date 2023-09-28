//
//  ContentView.swift
//  FirebaseEventCalendar
//
//  Created by Christopher Walter on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
            NavigationStack{
                
                NavigationLink("Add New Event", destination: AddEventView())
                
                //load events and display
                
                
            }.navigationTitle("Fords Rewards")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
