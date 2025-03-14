//
//  EducationListView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 14.03.25.
//

import SwiftUI

struct EducationListView: View {
    var body: some View {
        
        let education = [
            Education(
                qualification: "Allgemeine Hochschulreife",
                name: "Willheim-Erb-Gymnasium",
                begin: 2005,
                end: 2015
            ),
            Education(
                qualification: "Fachinformatiker Anwendungsentwicklung",
                name: "BBS 1 Technik Kaiserslautern",
                begin: 2015,
                end: 2018
            ),
        ]
        
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
