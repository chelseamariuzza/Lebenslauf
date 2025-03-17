//
//  CountdownView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 17.03.25.
//

import SwiftUI

struct CountdownView: View {
    
    @Binding var number: Int
    
    var body: some View {
        
        let text = if (number <= 0) { "Prost Neujahr!" } else { "\(number)" }
        
        VStack(spacing: 40) {
            Text("Countdown!")
                .font(.title)
            
            Text(text)
                .font(.largeTitle)
                .foregroundStyle(.red)
        }
    }
}

#Preview {
    CountdownView(number: .constant(1))
}
