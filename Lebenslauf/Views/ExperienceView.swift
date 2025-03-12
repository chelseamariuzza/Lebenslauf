//
//  ExperienceView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 11.03.25.
//

import SwiftUI

struct ExperienceView: View {

    let experience: Experience

    var body: some View {
        VStack {
            HStack {
                Text("Position").font(.title)
                Spacer()
                Text(experience.title)
            }.padding()
            HStack {
                Text("Zeitraum").font(.title)
                Spacer()
                Text("\(experience.begin)" + "-" + "\(experience.end)")
            }.padding()
            HStack {
                Text("Arbeitgeber").font(.title)
                Spacer()
                Text(experience.company)
            }.padding()
        }
    }
}

#Preview {
    ExperienceView(
        experience: Experience(
            title: "Auszubildender Fachinformatiker",
            company: "Tyre24 GmbH",
            begin: 2015,
            end: 2018)
    )
}
