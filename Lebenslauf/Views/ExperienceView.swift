//
//  ExperienceView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct ExperienceView: View {
    var body: some View {
        VStack{
            HStack {
                VStack(alignment: .leading) {
                    Spacer()
                    Text("Berufserfahrung")
                        .font(.headline)
                    Spacer()
                    Spacer()
                    Spacer()
                    Text("Kenntnnisse")
                        .font(.headline)
                    
                    Spacer()
                }
                Spacer()
                VStack(alignment: .center) {
                    Text("Ausbildung Tyre24 \n 2015-2018 \n\n SAITOW AG \n 2018-2019 \n\n C24 \n 2019-2024")
                        .multilineTextAlignment(.center)
                    Spacer()
                    Text("Android Entwicklung \n Java + Kotlin \n Firebase \n Dependency Injection \n Junit")
                        .multilineTextAlignment(.center)
                }
            }
        }.padding()
    }
}

#Preview {
    ExperienceView()
}
