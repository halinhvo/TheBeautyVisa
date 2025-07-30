
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color.white.ignoresSafeArea()

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

                    Text("Beauty Visa delivers personalized skincare and makeup tips based on your location or travel plans, factoring in climate, local beauty culture, and ingredient access.")
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

                    VStack {
                        HStack(spacing: 10) {
                            NavigationLink("Asia", destination: Asia())
                            NavigationLink("Europe", destination: Europe())
                        }

                        HStack(spacing: 10) {
                            NavigationLink("North America", destination: NorthAmerica())
                            NavigationLink("South America", destination: SouthAmerica())
                        }

                        HStack(spacing: 10) {
                            NavigationLink("Africa", destination: Africa())
                            NavigationLink("Oceania", destination: Oceania())
                        }
                    }
                   .frame(height: 100)
                    .padding()
                   .buttonStyle(ContinentButtonStyle())
                  
                }

                HStack {
                    Spacer()
                    ToolbarButton(systemName: "house", color: .gray)
                    Spacer()
                    ToolbarButton(systemName: "bell", color: .gray)
                    Spacer()

                    ZStack {
                        Circle()
                            .fill(
                                LinearGradient(
                                    colors: [
                                        Color(red: 228/255, green: 91/255, blue: 59/255),
                                        Color(red: 255/255, green: 183/255, blue: 166/255)
                                    ],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )

                            .frame(width: 60, height: 60)
                            .shadow(radius: 4)
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .bold))
                    }
                    .offset(y: -20)

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
