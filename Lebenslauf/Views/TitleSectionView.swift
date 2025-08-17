//
//  TitleSectionView.swift
//  Lebenslauf
//
//  Created by Chelsea Mariuzza on 14.03.25.
//

import SwiftUI

struct TitleSectionView: View {
    
    let titleSectionData : TitleSectionData
    
    var body: some View {
        HStack {
            Image(systemName: titleSectionData.icon)
                .padding(.leading)
            
            Text(titleSectionData.title)
                .titleSectionText()
            
            Spacer()
        }
    }
}

#Preview {
    TitleSectionView(
        titleSectionData: .init(
        icon: "person.fill",
        title: "Persönliche Daten")
    )
}
