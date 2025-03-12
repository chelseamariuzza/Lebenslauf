//
//  CoffeeMenuView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct CoffeeMenuView: View {
    var body: some View {
        Spacer()
        VStack {
            Text("Spezialkaffees des Tages").font(.title)
            Divider().padding(.bottom, 16)
            CoffeeView(
                coffee: Coffee(
                    icon: "☕️",
                    name: "Frappuchino Latte")
            )
            CoffeeView(
                coffee: Coffee(
                    icon: "☕️",
                    name: "Cappuchino Choco ")
            )
            CoffeeView(
                coffee: Coffee(
                    icon: "🍵",
                    name: "Green Tea Matcha")
            )
        }.padding(.bottom, 16)

        VStack {
            Text("Kuchen des Tages").font(.title)
            Divider().padding(.bottom, 16)
            CakeView(cake: Cake(name: "Schwarzwälder Kirchtorte"))
            CakeView(cake: Cake(name: "Käsekuchen"))
            CakeView(cake: Cake(name: "Schokotorte"))
        }
        Spacer()
    }
}

#Preview {
    CoffeeMenuView()
}
