//
//  SubscribeView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 13.03.25.
//

import SwiftUI

struct SubscribeView: View {
    var body: some View {
        Button(
            "Abonieren"
        ) {
            print(
                "Newsletter abonniert!"
            )
        }.foregroundStyle(
            .white
        )
        .padding()
        .background(.black)
        
        // option 1 with clip shape
        .clipShape(.capsule)
        
        // option 2 with background
        //        .background {
        //            RoundedRectangle(
        //                cornerRadius:
        //                    50
        //            ).foregroundStyle(
        //                .black
        //            )
        //        }
    }
}

#Preview {
    SubscribeView()
}
