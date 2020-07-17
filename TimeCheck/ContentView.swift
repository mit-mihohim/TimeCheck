//
//  ContentView.swift
//  TimeCheck
//
//  Created by Miho Takeda on 2020/07/15.
//  Copyright © 2020 mit-mihohim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var hours = ""
    
    var studyingHour: Double {
        let studyingHour = Double(hours) ?? 0
        return studyingHour
    }
    
    var totalMinutes: Double {
        let hour = Double(hours) ?? 0
        
        let totalMinutes = hour * 60
        
        return totalMinutes
    }
    
    
    var body: some View {
        NavigationView {
            Form {
                
//                studying hour
                Section(header: Text("How long are you studying?")) {
                    TextField("Enter number in hours", text: $hours).keyboardType(.decimalPad)
                }
                Section {
                    Text("You have studied \(studyingHour, specifier: "%.2f")hrs")
                }
                
                Section(header: Text("studying time in minutes")) {
                    Text("You have been studying \(totalMinutes, specifier: "%.0f") minutes")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
