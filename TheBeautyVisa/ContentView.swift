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
                    .font(.system(size: 37))
                    .fontWeight(.bold)
                    .padding(.bottom, 10.0)
              
                Text("Beauty Visa delivers personalized skincare and makeup tips based on your location or travel plans, factoring in climate, local beauty culture, and ingredient access.")
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 15.0)
                
                Text("Choose a region below to start!")
                    .font(.headline)
                    .padding(.bottom, 10.0)
                                                    
                Divider()
                
                Text("Continents")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    
                
                HStack(spacing: 20) {
                    NavigationLink("Asia", destination: SecondView())
                        .frame(width: 100, height: 50)
                        .frame(width: 100, height: 50)
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                    NavigationLink("Europe", destination: SecondView())
                        .frame(width: 100, height: 50)
                        .frame(width: 100, height: 50)
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                    NavigationLink("Australia", destination: SecondView())
                        .frame(width: 100, height: 50)
                        .frame(width: 100, height: 50)
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                }
                .padding()
                
                HStack(spacing: 20) {
                    NavigationLink("North America", destination: SecondView())
                        .frame(width: 100, height: 50)
                        .frame(width: 100, height: 50)
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                    NavigationLink("South America", destination: SecondView())
                        .frame(width: 100, height: 50)
                        .frame(width: 100, height: 50)
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .fontWeight(.bold)
                    NavigationLink("Africa", destination: SecondView())
                        .frame(width: 100, height: 50)
                        .frame(width: 100, height: 50)
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .fontWeight(.bold)
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
