//
//  DecorationView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 12.03.25.
//

import SwiftUI

struct DecorationView: View {
    var body: some View {

        VStack {
            Text("Susanne's Dekoideen")
                .font(.title)

            Image(.design1)
                .resizable()
                .scaledToFit()

            HStack {
                Image(.design2)
                    .resizable()
                    .scaledToFit()

                Image(.design3)
                    .resizable()
                    .scaledToFit()
            }
        }
    }
}

#Preview {
    DecorationView()
}
