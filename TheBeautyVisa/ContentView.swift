import SwiftUI

struct ContentView: View {
    var body: some View {
            
        NavigationStack {
            VStack {
                Image("BeautyVisaLogo")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                
                Text("BEAUTY VISA")
                    .font(.title)
                    .fontWeight(.bold)
              
                Text("Beauty Visa delivers personalized skincare and makeup tips based on your location or travel plans, factoring in climate, local beauty culture, and ingredient access.")
                    .multilineTextAlignment(.center)
                
                Text("Choose a region below to start!")
                    .font(.headline)
                                                    
                Divider()
                
                Text("Continents")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    
                
                HStack(spacing: 20) {
                    NavigationLink("Asia", destination: SecondView())
                    NavigationLink("Europe", destination: SecondView())
                    NavigationLink("Australia", destination: SecondView())
                }
                .padding()
                
                HStack(spacing: 20) {
                    NavigationLink("North America", destination: SecondView())
                    NavigationLink("South America", destination: SecondView())
                    NavigationLink("Africa", destination: SecondView())
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
