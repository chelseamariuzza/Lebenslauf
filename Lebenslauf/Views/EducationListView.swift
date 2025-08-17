//
//  EducationListView.swift
//  Lebenslauf
//
//  Created by Chelsea Mariuzza on 14.03.25.
//

import SwiftUI

struct EducationListView: View {
    
    private let education = [
        Education(
            qualification: "Allgemeine Hochschulreife",
            name: "Willheim-Erb-Gymnasium",
            begin: 2005,
            end: 2015
        ),
        Education(
            qualification: "Fachinformatikerin Anwendungsentwicklung",
            name: "BBS 1 Technik Kaiserslautern",
            begin: 2015,
            end: 2018
        ),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(education, id: \.self) { education in
                EducationView(education: education)
            }
        }
    }
}

#Preview {
    EducationListView()
}
