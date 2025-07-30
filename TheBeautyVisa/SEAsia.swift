import SwiftUI

struct SEAsia: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color(.systemBackground).ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("Southeast Asia")
                            .fontWeight(.bold)
                            .font(.title)
                        
                        Image("seaimg")
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
                                Text("Thailand 🇹🇭, Vietnam 🇻🇳, Indonesia 🇮🇩, Malaysia 🇲🇾, Philippines 🇵🇭, Singapore 🇸🇬 ... + more!")
                                    .font(.subheadline)
                                
                                Text("- Climate Features:")
                                    .font(.headline)
                                Group {
                                    Text("Temperate: Two main seasons — hot, humid summers and wet, rainy monsoons.")
                                    Text("Rain: Frequent and heavy downpours during monsoon season. Pack a light raincoat.")
                                    Text("Summers: Hot and humid — temps range from 80–95°F (27–35°C), often with high humidity.")
                                    Text("Winters: 75–88°F (24–31°C), warm year-round, especially in countries like Thailand and Malaysia.")
                                }
                                .font(.subheadline)
                            }
                        }
                        .padding()
                        .frame(maxWidth: 360)
                        .background(
                            RoundedRectangle(cornerRadius: 12.0)
                                .fill(Color(.secondarySystemBackground))
                                .shadow(radius: 3.0)
                        )
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.bottom, 90)
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
