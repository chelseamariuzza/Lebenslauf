//
//  ExperienceView.swift
//  Lebenslauf
//
//  Created by Chelsea Mariuzza on 11.03.25.
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
                }
                HStack {
                    Text("Zeitraum").font(.title2)
                    Spacer()
                    Text("\(experience.begin)" + "-" + "\(experience.end)").multilineTextAlignment(.trailing)
                }
                HStack {
                    Text("Arbeitgeber").font(.title2)
                    Spacer()
                    Text(experience.company).multilineTextAlignment(.trailing)
                }
            }.cardView()
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
