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
