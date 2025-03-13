//
//  PersonalDataView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 13.03.25.
//

import SwiftUI

struct PersonalDataView: View {
    
    let personalData: PersonalData
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Name")
                    .font(.title2)
                Spacer()
                Text(personalData.name)
            }.padding(.horizontal)
            
            HStack {
                Text( "Anschrift")
                    .font(.title2)
                Spacer()
                Text(
                    "\(personalData.adress.street) \(personalData.adress.houseNumber) \n \(personalData.adress.zipCode) \(personalData.adress.city)"
                ).multilineTextAlignment(.trailing)
            }.padding(.horizontal)
            
            HStack {
                Text("Telefon")
                    .font(.title2)
                Spacer()
                Text(personalData.telefoneNumber)
            }.padding(.horizontal)
            
            HStack {
                Text("E-mail")
                    .font(.title2)
                Spacer()
                Text(personalData.email)
            }.padding(.horizontal)
            
            HStack {
                Text("Staatsangehörigkeit")
                    .font(.title2)
                Spacer()
                Text(personalData.nationality)
            }.padding(.horizontal)
            
            HStack {
                Text("Geburtsdatum")
                    .font(.title2)
                Spacer()
                Text(personalData.birthDate)
            }.padding(.horizontal)
            
            Divider()
        }
    }
}

#Preview {
    PersonalDataView(
        personalData: PersonalData(
            name: "Charles Mariuzza",
            birthDate: "13.03.1995",
            telefoneNumber: "015164744584",
            email: "charles@mariuzza.de",
            nationality: "Deutsch / Amerikanisch",
            adress: Adress(
                street: "Otterbergerstr.",
                houseNumber: "46",
                zipCode: "67727",
                city: "Lohnsfeld"
            )
        )
    )
}
