//
//  TextExtensions.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 14.03.25.
//

import SwiftUI

extension Text {
    func titleSectionText() -> some View {
        self
            .font(.title)
            .padding(.trailing)
            .padding(.vertical)
    }
}
