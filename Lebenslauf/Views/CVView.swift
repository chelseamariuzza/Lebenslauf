import SwiftUI

struct CVView: View {
    var body: some View {
        VStack{
            Image(.pacman)
                .resizable()
                .scaledToFill()
                .clipped()
                .ignoresSafeArea()
                .overlay{
                    VStack{
                        Image(.profilePicture)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 290)
                        
                        Text("Charles Mariuzza")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom)
                }
            
            VStack{
                HStack() {
                    Text("Berufserfahrung:")
                        .font(.headline)
                    
                    Spacer()
                    
                        Text("Ausbildung Tyre24 \n 2015-2018 \n\n SAITOW AG \n 2018-2019 \n\n C24 \n 2019-2024")
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 32)
                }
                .padding(.bottom, 5)
                
                HStack {
                    Text("Kenntnnisse:")
                        .font(.headline)
                    
                    Spacer()
                    
                    Text("Android Entwicklung \n Java + Kotlin \n Firebase \n Dependency Injection, Junit")
                        .multilineTextAlignment(.center)
                }
            }
            
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
