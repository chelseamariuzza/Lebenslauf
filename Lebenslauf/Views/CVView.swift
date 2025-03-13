import SwiftUI

struct CVView: View {
    
    @State private var showAlert = false
    
    var body: some View {
        VStack{
            
            let personalData = PersonalData(
                name: "Charles Mariuzza",
                birthDate: "13.03.1995",
                telefoneNumber: "0151 64744584",
                email: "charles@mariuzza.de",
                nationality: "Deutsch / Amerikanisch",
                adress: Adress(
                    street: "Otterbergerstr.",
                    houseNumber: "46",
                    zipCode: "67727",
                    city: "Lohnsfeld"
                )
            )
            
            let experiences = [
                Experience(
                    title: "Auszubildender Fachinformatiker",
                    company: "Tyre24 GmbH",
                    begin: 2015,
                    end: 2018
                ),
                Experience(
                    title: "Software Developer (Junior)",
                    company: "ALZURA AG",
                    begin: 2018,
                    end: 2019
                ),
                Experience(
                    title: "Software Developer (Professional)",
                    company: "C24 Bank GmbH",
                    begin: 2019,
                    end: 2024
                ),
            ]
            
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
            
            HeaderView()
            
            ScrollView {
                HStack {
                    Image(systemName: "person.fill")
                        .padding(.leading)
                    Text("Persönliche Daten")
                        .font(.title)
                        .padding(.trailing)
                        .padding(.vertical)
                    Spacer()
                }
                
                PersonalDataView(personalData: personalData)
                
                HStack {
                    Image(systemName: "briefcase.fill")
                        .padding(.leading)
                    Text("Berufserfahrung")
                        .font(.title)
                        .padding(.trailing)
                        .padding(.vertical)
                    Spacer()
                }
                
                ExperienceView(experience: experiences[0])
                ExperienceView(experience: experiences[1])
                ExperienceView(experience: experiences[2])
                
                HStack {
                    Image(systemName: "graduationcap.fill")
                        .padding(.leading)
                    Text("Schulbildung")
                        .font(.title)
                        .padding(.trailing)
                        .padding(.vertical)
                    Spacer()
                }
                
                EducationView(education: education[0])
                EducationView(education: education[1])
                    .padding(.bottom, 8)
                
                Button(
                    "Kontaktieren",
                    systemImage: "phone.fill"
                ) {
                    showAlert = true
                }
                .alert(
                    "Telefonnummer",
                    isPresented: $showAlert
                ) {
                    Button(
                        "Schließen",
                        role: .cancel
                    ) {
                    }
                } message: {
                    Text(
                        "\(personalData.telefoneNumber)"
                    )
                }
            }
        }
    }
}

#Preview {
    CVView()
}
