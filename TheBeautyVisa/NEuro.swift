//
//  WesternEurope.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct NEuro: View {
    var body: some View {
        NavigationStack {
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
                                Text("Maritime (Oceanic): Coastal UK, Ireland, Denmark, southern Scandinavia and Baltic states have mild, wet winters and cool summers with frequent year‑round precipitation, thanks to Atlantic currents.")
                                Text("Continental/Subarctic: Inland Sweden, Finland and Baltic countries get warmer summers (~20–23 °C / 68–73 °F) and cold winters, while far‑north areas face long freezing winters and short cool summers; Iceland’s lowlands are subpolar oceanic, highlands are tundra.")
                                Text("Rain & Snow: Rain peaks late summer to autumn; frequent coastal rain, often heavy in western Norway (up to 3,000–4,000 mm/yr); inland snow common from winter into spring.")
                                Text("Summer (June–Aug): Coastal highs ~17–18 °C (63–64 °F); inland Sweden & Finland ~20–23 °C; Iceland cool ~10–15 °C.")
                                Text("Winter (Dec–Feb): Coastal ~0 °C (32 °F); inland −5 to −10 °C (23–14 °F); far north ≤ −15 °C (5 °F); Iceland lowlands ~0 °C, highlands often −10 °C or lower.")
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
                
                VStack {
                    Text("Fashion")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                    HStack {
                        NavigationLink("Men", destination: NEuro())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                        NavigationLink("Women", destination: NEuro())
                            .frame(width: 150, height: 20)
                            .padding()
                            .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                    }
                    
                    Text("Beauty/Skin/Hair")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding()
                    NavigationLink("Both", destination: NEuro())
                        .frame(width: 150, height: 20)
                        .padding()
                        .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .font(.headline)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    NEuro()
}

