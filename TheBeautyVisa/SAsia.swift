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
                                    Text("• Hot and humid most of the year, with monsoon seasons (June–Sept), and cooler winters (Dec–Feb), varies by region.")
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

                        VStack(alignment: .leading, spacing: 16) {
                            Text("Fashion")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 5)

                            HStack(spacing: 20) {
                                NavigationLink(destination: SAsiaMensFashion()) {
                                    Text("Men's")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }

                                NavigationLink(destination: SAsiaWomensFashion()) {
                                    Text("Women's")
                                        .frame(maxWidth: .infinity)
                                        .padding()
                                        .background(Color.pink)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .padding()

                        VStack(alignment: .leading, spacing: 16) {
                            Text("Beauty / Skin / Hair")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 5)

                            NavigationLink(destination: BeautySouthAsia()) {
                                Text("Both")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.purple)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                        }
                        .padding()

                        Spacer()
                            .frame(height: 100) // Give room for the toolbar
                    }
                    .padding()
                }

                // Bottom Toolbar
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
