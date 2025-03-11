//
//  CoffeeMenuView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct CoffeeMenuView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Text("Spezialkaffees des Tages").font(.title)
            Divider().padding(.bottom, 16)
            Text("Frappuchino Latte ☕️")
            Text("Cappuchino Choco ☕️")
            Text("Green Tea Matcha 🍵")
            Spacer()
        }
    }
}

#Preview {
    CoffeeMenuView()
}
