//
//  ContentView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 17.03.25.
//

import SwiftUI

struct ContentView: View {
    
    @State var time : Int = 10
    @State var showFireWorks: Bool = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            CountdownView(number: $time)
            
            Button("Weiter") {
                time -= 1
            }
            
            if (showFireWorks) {
                Text("🎆")
            }
            
            Toggle(isOn: $showFireWorks) {
                Text("Zeige Feuerwerk an")
            }
        }
    }
}

#Preview {
    ContentView()
}
