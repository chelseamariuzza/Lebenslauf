//
//  ViewExtensions.swift
//  Lebenslauf
//
//  Created by Chelsea Mariuzza on 14.03.25.
//

import Foundation

import SwiftUI

extension View {
    func cardView() -> some View {
        self
            // inner padding
            .padding()
            // card background with shadow
            .background {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundStyle(.white)
                    .shadow(radius: 4)
            }
            // outer padding
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
    }
}
