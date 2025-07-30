import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            NavigationStack {
                VStack {
                    Image("BeautyVisaLogo")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())

                    Text("BEAUTY VISA ✧")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 3.0)

                    Text("Beauty Visa delivers personalized skincare and makeup tips based on your location or travel plans, factoring in climate, local beauty culture, and ingredient access")
                        .multilineTextAlignment(.center)

                    Text("Choose a region below to start!")
                        .font(.headline)
                        .padding(.vertical, 7.0)

                    Divider()

                    Text("Continents")
                        .font(.system(size: 30))
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 5.0)
                    
                    
                    HStack(spacing: 10) {
                        NavigationLink("Asia", destination: Asia())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                        NavigationLink("Europe", destination: Europe())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                  //  .padding()
                    
                    HStack(spacing: 10) {
                        NavigationLink("North America", destination: NorthAmerica())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                        NavigationLink("South America", destination: SouthAmerica())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                    .padding()
                    
                    HStack(spacing: 10) {
                        NavigationLink("Africa", destination: Africa())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)

                        NavigationLink("Australia", destination: Australia())

                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                //   .frame(height: 100)
                    .padding(.bottom, 55.0)
                //  .buttonStyle(ContinentButtonStyle())
                  
                }

                HStack {
                    Spacer()
                    ToolbarButton(systemName: "house", color: .gray)
                    Spacer()
                    ToolbarButton(systemName: "bell", color: .gray)
                    Spacer()


                   
                   ToolbarButton(systemName: "airplane", color: .gray)
                    Spacer()
                    ToolbarButton(systemName: "gear", color: .gray)
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(Color.white.shadow(radius: 2))
            }
        }
    }
}

struct ToolbarButton: View {
    var systemName: String
    var color: Color

    var body: some View {
        Image(systemName: systemName)
            .font(.system(size: 24))
            .foregroundColor(color)
    }
}

struct ContinentButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 150, height: 20)
            .padding()
            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
    }
}

#Preview {
    ContentView()
}
