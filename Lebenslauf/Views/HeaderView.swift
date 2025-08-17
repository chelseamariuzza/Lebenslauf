//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Chelsea Mariuzza on 11.03.25.
//

import SwiftUI

struct HeaderView: View {
    
    var body: some View {
        VStack {
            Image(.pacman)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(height: 250)
                .overlay {
                    VStack {
                        Image(.pb)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 165,height: 165)
                            .clipShape(.circle)
                            .clipped()
                        
                        Text("Lebenslauf")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
        }.background(.black)
    }
}

#Preview {
    HeaderView()
}
