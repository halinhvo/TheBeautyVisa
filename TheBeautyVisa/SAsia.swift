import SwiftUI

struct SAsia: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        Text("South Asia")
                            .fontWeight(.bold)
                            .font(.title)

                        Image("SouthAsia")
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
                                Text("India 🇮🇳, Pakistan 🇵🇰, Bangladesh 🇧🇩, Sri Lanka 🇱🇰, Nepal 🇳🇵, Bhutan 🇧🇹, Maldives 🇲🇻")
                                    .font(.subheadline)

                                Text("- Climate Features:")
                                    .font(.headline)

                                Group {
                                    Text("• Hot and humid most of the year, with monsoon seasons (June–Sept) and cooler winters (Dec–Feb), varies by region.")
                                    Text("• Dry seasons in parts of northern India, Pakistan, and Nepal.")
                                    Text("• High UV Index year-round — sunscreen is essential.")
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
                                NavigationLink("Men", destination: SAsiaMensFashion())
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color(.blue))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)

                                NavigationLink("Women", destination: SAsiaWomensFashion())
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color(.red))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)
                            }

                            Text("Beauty")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()

                            NavigationLink("Go", destination: SAsiaBeauty())
                                .frame(width: 350, height: 20)
                                .padding()
                                .background(Color(.purple))
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
                    NavigationLink(destination: Asia()) {
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
    SAsia()
}
