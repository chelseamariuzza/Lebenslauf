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
        VStack {
            HStack {
                Text("Zeitraum").font(.title)
                Spacer()
                Text("\(education.begin)" + "-" + "\(education.end)")
            }.padding()
            
            HStack {
                Text("Erworbene Qualification").font(.title)
                Spacer()
                Text(education.qualification)
            }.padding()
            
            HStack {
                Text("Institition").font(.title)
                Spacer()
                Text(education.name)
            }.padding()
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
