import SwiftUI

struct CVView: View {

    @StateObject private var cvViewmodel = CVViewModel()

    var body: some View {
        VStack(spacing: 0) {
            // Header mit Profilfoto
            HeaderView()

            ScrollView {

                // Persönliche Daten
                TitleSectionView(
                    titleSectionData: .init(
                        icon: "person.fill",
                        title: "Persönliche Daten")
                )

                PersonalDataView()

                // Berufserfahrung
                TitleSectionView(
                    titleSectionData: .init(
                        icon: "briefcase.fill",
                        title: "Berufserfahrung")
                )

                ExperienceListView()

                // Schulbildung
                TitleSectionView(
                    titleSectionData: .init(
                        icon: "graduationcap.fill",
                        title: "Schulbildung")
                )

                EducationListView()

                // Kontaktieren Button
                Button(
                    "Kontaktieren",
                    systemImage: "phone.fill"
                ) { cvViewmodel.call() }
                .padding(20)
            }
        }.background(Color.gray.opacity(0.1))
    }
}

#Preview {
    CVView()
}
