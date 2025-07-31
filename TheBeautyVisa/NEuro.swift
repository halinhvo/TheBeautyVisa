import SwiftUI

struct NEuro: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        Text("Northern Europe")
                            .fontWeight(.bold)
                            .font(.title)

                        Image("NorthernEurope")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.9)
                            .padding(.bottom, 10)
                            .shadow(radius: 3.0)

                        VStack {
                            Text("Things to expect:")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()

                            VStack(alignment: .leading, spacing: 20) {
                                Text("- Countries:")
                                    .font(.headline)
                                Text("United Kingdom 🇬🇧, Ireland 🇮🇪, Denmark 🇩🇰, Sweden 🇸🇪, Norway 🇳🇴, Finland 🇫🇮, Iceland 🇮🇸, Estonia 🇪🇪, Latvia 🇱🇻, Lithuania 🇱🇹")
                                    .font(.subheadline)

                                Text("- Climate Features:")
                                    .font(.headline)

                                Group {
                                    Text("Maritime: Coastal areas like UK and Denmark have mild winters and cool summers.")
                                    Text("Continental: Inland regions have warmer summers, colder winters.")
                                    Text("Subarctic: Far-north zones see long winters and short cool summers.")
                                    Text("Frequent rain and snow depending on region.")
                                }
                                .font(.subheadline)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12.0)
                                .fill(Color(.secondarySystemBackground))
                                .shadow(radius: 3.0)
                        )

                        Divider().padding(.vertical)

                        VStack {
                            Text("Fashion")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()

                            HStack {
                                NavigationLink("Men (N/A)", destination: NEuro())
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)

                                NavigationLink("Women (N/A)", destination: NEuro())
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)
                            }

                            Text("Beauty (N/A)")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()

                            NavigationLink("Go", destination: NEuro())
                                .frame(width: 150, height: 20)
                                .padding()
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.headline)
                        }

                        Spacer()
                            .frame(height: 100)
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
    NEuro()
}
