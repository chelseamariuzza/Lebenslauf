//
//  ContentView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 17.03.25.
//

import SwiftUI

struct ContentView: View {
    
    @State var time : Int = 10
    
    var body: some View {
        
        VStack {
            CountdownView(number: $time)
            
            Button("Weiter") {
                time -= 1
            }
        }
    }
}

#Preview {
    ContentView()
}
