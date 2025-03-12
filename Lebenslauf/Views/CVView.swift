import SwiftUI

struct CVView: View {
    var body: some View {
        VStack{
            
            let personalData = PersonalData(
                name: "Charles Mariuzza",
                birthDate: "13.03.1995",
                telefoneNumber: "0151 64744584",
                adress: Adress(
                    street: "Otterbergerstr.",
                    houseNumber: "46",
                    zipCode: "67727",
                    city: "Lohnsfeld"
                )
            )
            
            let experience = [
                Experience(title: "Auszubildender Fachinformatiker", company: "Tyre24 GmbH", begin: 2015, end: 2018),
                Experience(title: "Software Developer (Junior)", company: "ALZURA AG", begin: 2018, end: 2019),
                Experience(title: "Software Developer (Professional)", company: "C24 Bank GmbH", begin: 2019, end: 2024)
            ]
            
            HeaderView(personalData: personalData)
            ExperienceView()
            
            
            Button("Kontakt", action: navigationToKontakt)
                .padding(10)
            
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}

func navigationToKontakt (){
    //todo
}

#Preview {
    CVView()
}
