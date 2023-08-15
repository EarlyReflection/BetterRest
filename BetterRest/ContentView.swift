//
//  ContentView.swift
//  BetterRest
//
//  Created by Vladimir Dvornikov on 12/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeCups = 1
    
    var body: some View {
        VStack {
            Text("When do you want to wake up?")
                .font(.headline)
            
            DatePicker("Please enter a tine", selection: $wakeUp, displayedComponents: .hourAndMinute)
                .labelsHidden()
            
            Text("Desired amount to sleep")
                .font(.headline)
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
            Text("Daily coffee intake")
                .font(.headline)
            
            Stepper(coffeeCups == 1 ? "1 cup" : "\(coffeeCups) cups", value: $coffeeCups, in: 1...20)
        }
    }
    
    func calculateBedtime() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
