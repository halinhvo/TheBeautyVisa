import SwiftUI

struct WEuro: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        Text("Western Europe")
                            .fontWeight(.bold)
                            .font(.title)

                        Image("westerneuro")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.9)
                            .padding(.bottom, 10)
                            .shadow(radius: 3.0)

                        VStack(alignment: .leading, spacing: 20) {
                            Text("Things to expect:")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 5)

                            Text("- Countries:")
                                .font(.headline)
                            Text("France 🇫🇷, Germany 🇩🇪, Netherlands 🇳🇱, Belgium 🇧🇪, Austria 🇦🇹, Switzerland 🇨🇭, Luxembourg 🇱🇺")
                                .font(.subheadline)

                            Text("- Climate Features:")
                                .font(.headline)

                            Group {
                                Text("• Temperate: Four distinct seasons — cool winters, warm summers, mild spring and fall.")
                                Text("• Rain: Frequent showers, especially in the Netherlands and Belgium. Always bring a cute trench or umbrella.")
                                Text("• Summers: 70–85°F (21–29°C), popular for travel.")
                                Text("• Winters: 30–45°F (–1 to 7°C), with some snowfall in Austria and Switzerland.")
                            }
                            .font(.subheadline)
                        }
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(.secondarySystemBackground))
                                .shadow(radius: 3)
                        )

                        Divider().padding(.vertical)

                        VStack(alignment: .leading, spacing: 16) {
                            Text("Fashion")
                                .font(.title2)
                                .fontWeight(.semibold)

                            HStack(spacing: 20) {
                                NavigationLink(destination: WEuro()) {
                                    Text("Men's")
                                        .frame(width: 150, height: 20)
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }

                                NavigationLink(destination: WEuro()) {
                                    Text("Women's")
                                        .frame(width: 150, height: 20)
                                        .padding()
                                        .background(Color.pink)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .padding(.bottom)

                        VStack(alignment: .leading, spacing: 16) {
                            Text("Beauty / Skin / Hair")
                                .font(.title2)
                                .fontWeight(.semibold)

                            NavigationLink(destination: WEuro()) {
                                Text("Both")
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color.purple)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }

                        Spacer().frame(height: 100)
                    }
                    .padding()
                }

                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        ToolbarButton(systemName: "house", color: .gray)
                    }
                    Spacer()
                    ToolbarButton(systemName: "bell", color: .gray)
                    Spacer()
                    NavigationLink(destination: Europe()) {
                        ToolbarButton(systemName: "airplane", color: .gray)
                    }
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

#Preview {
    WEuro()
}
