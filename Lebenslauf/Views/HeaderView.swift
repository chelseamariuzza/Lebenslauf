//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        Image(.pacman)
            .resizable()
            .scaledToFill()
            .clipped()
            .ignoresSafeArea()
            .overlay{
                VStack{
                    Image(.profilePicture)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 290)
                    
                    Text("Charles Mariuzza")
                        .font(.title)
                        .foregroundColor(.white)
                }
                .padding(.bottom)
            }
    }
}

#Preview {
    HeaderView()
}
