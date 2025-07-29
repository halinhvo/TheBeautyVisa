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
                
                Text("Regions")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    
                
                HStack(spacing: 20) {
                    NavigationLink("Region 1", destination: SecondView())
//                    NavigationLink("Region 2", destination: ThirdView())
                    NavigationLink("Region 3", destination: SecondView())
                }
                .padding()
                
                HStack(spacing: 20) {
                    NavigationLink("Region 4", destination: SecondView())
                    NavigationLink("Region 5", destination: SecondView())
                    NavigationLink("Region 6", destination: SecondView())
                }
                .padding()
                
                Spacer()
                Text("change 1 (test)")
            }
        }
    }
}

#Preview {
    ContentView()
}
