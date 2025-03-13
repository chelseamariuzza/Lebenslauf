//
//  EducationView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 12.03.25.
//

import SwiftUI

struct EducationView: View {
    
    let education: Education
    
    var body: some View {
        VStack(spacing: 16) {
            HStack {
                Text("Zeitraum").font(.title2)
                Spacer()
                Text(verbatim: "\(education.begin) - \(education.end)").multilineTextAlignment(.trailing)
            }.padding(.horizontal)
            
            HStack {
                Text("Erworbene Qualifikation").font(.title2)
                Spacer()
                Text(education.qualification).multilineTextAlignment(.trailing)
            }.padding(.horizontal)
            
            HStack {
                Text("Arbeitgeber").font(.title2)
                Spacer()
                Text(education.name).multilineTextAlignment(.trailing)
            }.padding(.horizontal)
            Divider()
        }
    }
}

#Preview {
    EducationView(education : Education(
        qualification: "Allgemeine Hochschulreife",
        name: "Willheim-Erb-Gymnasium",
        begin: 2005,
        end: 2015)
    )
}
