//
//  NewsView.swift
//  Lebenslauf
//
//  Created by Charles Mariuzza on 13.03.25.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack {
            Text("Breaking News")
                .fontWeight(.heavy)
                .padding(10)
                .background(.black)
                .foregroundStyle(.red)

            Text("Löwe aus Zoo ausgebrochen")
                .font(.title)
                .padding(.bottom, 10)

            Text(
                "Heute ist im zoologisch lockeren Tiergarten in Berlin ein Löwe aus dem Zoo ausgebrochen. Die Polizei und der Tierarzt haben den Löwenherd in der Wildnis erlegt."
            )
            .italic()
            .frame(width: 350)
            .padding()
            .border(.yellow, width: 10)
        }
    }
}

#Preview {
    NewsView()
}
