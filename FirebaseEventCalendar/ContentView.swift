//
//  ContentView.swift
//  FirebaseEventCalendar
//
//  Created by Christopher Walter on 9/28/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = EventsViewModel()
    
    var body: some View {
       
            NavigationStack{
                
                NavigationLink("Add New Event", destination: AddEventView())
                    .padding()
                
                //load events and display
                
                Text("Events:")
                    .font(.largeTitle)
                    .padding()
                List {
                    ForEach(viewModel.events) { event in
                        VStack {
                            Text("\(event.name)")
                                .font(.title)
                            Text("\(event.formattedDate)")
                        }
                        
                    }
                }
                .listStyle(.plain)
                Text("Possible sample:\nName, Date/time")
                Spacer()
                    .onAppear {
                        viewModel.loadAllEvents()
                    }
            }.navigationTitle("Fords Rewards")
           
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
