//
//  AddEventView.swift
//  FirebaseEventCalendar
//
//  Created by Christopher Walter on 9/28/23.
//

import SwiftUI

struct AddEventView: View {
    
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = AddEventViewModel()
    
    var body: some View {
        VStack {
            Text("Add New Event")
                .font(.largeTitle)
                .fontWeight(.semibold)
            HStack {
                Text("Event Name:")
                TextField("event name...", text: $viewModel.eventName)
            }
            .padding()
            Button("Save Event") {
                print("save event")
                viewModel.addEvent()
                dismiss()
                
            }
            .padding()
            .font(.title)
            .fontWeight(.semibold)
            Spacer()
        }

        
    }
}

struct AddEventView_Previews: PreviewProvider {
    static var previews: some View {
        AddEventView()
    }
}
