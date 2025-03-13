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
        VStack(spacing: 16) {
            HStack {
                Text("Position").font(.title2)
                Spacer()
                Text(experience.title).multilineTextAlignment(.trailing)
            }.padding(.horizontal)
            HStack {
                Text("Zeitraum").font(.title2)
                Spacer()
                Text("\(experience.begin)" + "-" + "\(experience.end)").multilineTextAlignment(.trailing)
            }.padding(.horizontal)
            HStack {
                Text("Arbeitgeber").font(.title2)
                Spacer()
                Text(experience.company).multilineTextAlignment(.trailing)
            }.padding(.horizontal)
        }
        Divider()
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
