//
//  ContentView.swift
//  BetterRest
//
//  Created by Mykola Chaikovskyi on 30.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text(Date.now, format: .dateTime.day().month().year())
            Text(Date.now.formatted(date: .long, time: .shortened))
        }
        
    }
    
    func exampleDates() {
        // var components = DateComponents()
        // components.hour = 8
        // components.minute = 0
        // let date = Calendar.current.date(from: components) ?? .now
        
        let components = Calendar.current.dateComponents([.day, .hour], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
