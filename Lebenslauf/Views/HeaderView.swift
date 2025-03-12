//
//  HeaderView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct HeaderView: View {
    
    let personalData: PersonalData
    
    var body: some View {
        Image(.pacman)
            .resizable()
            .scaledToFill()
            .clipped()
            .ignoresSafeArea()
            .frame(height: 250)
            .overlay {
                VStack {
                    Image(.profilePicture)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                    
                    Text("\(personalData.name)")
                        .font(.title)
                        .foregroundColor(.white)
                    /*Text("\(personalData.birthDate)")
                        .font(.title2)
                        .foregroundColor(.white)
                    Text("\(personalData.telefoneNumber)")
                        .font(.title2)
                        .foregroundColor(.white)
                    HStack {
                        Text("\(personalData.adress.street)")
                            .font(.title2)
                            .foregroundColor(.white)
                        Text("\(personalData.adress.houseNumber)")
                            .font(.title2)
                            .foregroundColor(.white)
                    }
                    HStack {
                        Text("\(personalData.adress.zipCode)")
                            .font(.title2)
                            .foregroundColor(.white)
                        Text("\(personalData.adress.city)")
                            .font(.title2)
                            .foregroundColor(.white)
                    }*/
                }
                .padding(.bottom)
            }
    }
}

#Preview {
    HeaderView(
        personalData: PersonalData(
            name: "String",
            birthDate: "String",
            telefoneNumber: "String",
            adress: Adress(
                street: "String",
                houseNumber: "String",
                zipCode: "String",
                city: "String"
            )
        )
    )
}
