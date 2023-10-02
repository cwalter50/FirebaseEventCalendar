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
                    .padding()
                
                //load events and display
                
                Text("Events:")
                    .font(.largeTitle)
                    .padding()
                Text("List events here")
                    .padding()
                Text("Possible sample:\nName, Date/time")
                Spacer()
            }.navigationTitle("Fords Rewards")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
