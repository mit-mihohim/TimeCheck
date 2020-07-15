//
//  ContentView.swift
//  TimeCheck
//
//  Created by Miho Takeda on 2020/07/15.
//  Copyright © 2020 mit-mihohim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var hour = ""
    var body: some View {
        Form {
            Section(header: Text("How long are you studying?")) {
                TextField("Enter number in hours", text: $hour)
                Text("You have studied \(hour)hrs")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
