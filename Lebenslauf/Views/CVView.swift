import SwiftUI

struct CVView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        VStack(spacing: 0){
            // Header mit Profilfoto
            HeaderView()
            
            ScrollView() {
                
                // Persönliche Daten
                TitleSectionView(titleSectionData: .init(
                    icon: "person.fill",
                    title: "Persönliche Daten")
                )
                
                PersonalDataView()
                
                // Berufserfahrung
                TitleSectionView(titleSectionData: .init(
                    icon: "briefcase.fill",
                    title: "Berufserfahrung")
                )
                
                ExperienceListView()
                
                // Berufserfahrung Schulbildung
                TitleSectionView(titleSectionData: .init(
                    icon: "graduationcap.fill",
                    title: "Schulbildung")
                )
                
                EducationListView()
                
                // Kontaktieren Button
                Button(
                    "Kontaktieren",
                    systemImage: "phone.fill"
                ) {showAlert = true}
                    .alert(
                        "Telefonnummer",
                        isPresented: $showAlert
                    ) {
                        Button(
                            "Schließen",
                            role: .cancel
                        ) {}
                    } message: {
                        Text("0151 64744584")
                    }
                    .padding(20)
            }
        }.background(Color.gray.opacity(0.1))
    }
}

#Preview {
    CVView()
}
