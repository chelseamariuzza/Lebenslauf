//
//  CoffeeView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct CoffeeView: View {
    
    let coffee : Coffee
    
    var body: some View {
        HStack {
            Text("\(coffee.name)")
            Text("\(coffee.icon)")
        }
        Divider()
    }
}

#Preview {
    CoffeeView(coffee : Coffee(icon: "☕️",name: "Frappuchino Latte"))
}
