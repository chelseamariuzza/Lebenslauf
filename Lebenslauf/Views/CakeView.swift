//
//  CakeView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct CakeView: View {
    
    let cake : Cake
    
    var body: some View {
        
        VStack {
            Text("\(cake.icon)")
            Text("\(cake.name)")
            Divider()
        }
    }
}

#Preview {
    CakeView(cake : Cake(name: "Ein Kuchen"))
}
