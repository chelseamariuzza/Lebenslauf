//
//  ExperienceListView.swift
//  Lebenslauf
//
//  Created by Chelsea Mariuzza on 14.03.25.
//

import SwiftUI

struct ExperienceListView: View {
    
    private let experiences = [
        Experience(
            title: "Auszubildende Fachinformatikerin",
            company: "Tyre24 GmbH",
            begin: 2015,
            end: 2018
        ),
        Experience(
            title: "Software Developer (Junior)",
            company: "ALZURA AG",
            begin: 2018,
            end: 2019
        ),
        Experience(
            title: "Software Developer (Professional)",
            company: "C24 Bank GmbH",
            begin: 2019,
            end: 2024
        ),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(experiences, id: \.self) { experience in
                ExperienceView(experience: experience)
            }
        }
    }
}

#Preview {
    ExperienceListView()
}
