import SwiftUI

struct SEuro: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Southern Europe")
                        .fontWeight(.bold)
                        .font(.title)
                    Image("southerneurope")
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
                            Text("Spain 🇪🇸, Portugal 🇵🇹 (southern), Italy 🇮🇹 (central & south), Greece 🇬🇷, Malta 🇲🇹, Cyprus 🇨🇾, coastal Croatia 🇭🇷, Montenegro 🇲🇪, Albania 🇦🇱, coastal Slovenia 🇸🇮, Andorra 🇦🇩, San Marino 🇸🇲, Vatican City 🇻🇦")
                                .font(.subheadline)
                            Text("- Climate Features:")
                                .font(.headline)
                            
                            Group {
                                Text("Mediterranean climate: Hot, dry summers; mild, wet winters. Rain mostly from autumn through spring.")
                                Text("SSummer: ~27–35 °C (81–95 °F), coastal humidity varies by region; Athens and Valencia often ~30 °C.")
                                Text("Winters: ~5–15 °C (41–59 °F) at sea level; snow mainly in highlands/mountains like the Alps, Apennines, Troodos.")
                                Text("Rainfall: Typically 250–600 mm/year; coastal and northern areas wetter, Andalusian interior & Almería semi‑arid (~150 mm/year).")
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
                }
                .padding()
                Divider().padding(.vertical)
                
                VStack(alignment: .leading, spacing: 16) {
                    Text("Fashion")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                    
                    HStack(spacing: 20) {
                        NavigationLink(destination: SEuro()) {
                            Text("Men's")
                                .frame(width: 150, height: 20)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.headline)

                        }
                        
                        NavigationLink(destination: SEuro()) {
                            Text("Women's")
                                .frame(width: 150, height: 20)
                                .padding()
                                .background(Color.pink)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.headline)
                        }
                    }
                }
                .padding()
                
                // Beauty Section
                VStack(alignment: .leading, spacing: 16) {
                    Text("Beauty / Skin / Hair")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                    
                    NavigationLink(destination: WEuro()) {
                        Text("Both")
                            .frame(width: 350, height: 20)
                            .padding()
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)

                    }
                }
                .padding()
                Spacer()
                
            }
        }
    }
}

#Preview {
    SEuro()
}
