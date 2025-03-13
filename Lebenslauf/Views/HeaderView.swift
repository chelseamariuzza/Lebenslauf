//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        Image(
            .pacman
        )
        .resizable()
        .scaledToFill()
        .ignoresSafeArea()
        .frame(
            height: 200
        )
        .overlay {
            VStack {
                Image(
                    .pb
                )
                .resizable()
                .scaledToFill()
                .frame(
                    width: 165,
                    height: 120
                )
                .clipShape(
                    .circle
                )
                .clipped()
                
                Text("Lebenslauf")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    HeaderView()
}
