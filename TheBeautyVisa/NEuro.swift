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
                                Text("Maritime (Oceanic): Coastal UK, Ireland, Denmark, and parts of Norway/Sweden have mild winters and cool summers with consistent year‑round rain, owing to Atlantic currents.")
                                Text("Continental: Inland Sweden, Finland, and the Baltic states bring warmer summers (≈ 20‑23 °C / 68‑73 °F) and cold winters with more seasonal variation.")
                                Text("Subarctic / Tundra: Far-north Sweden, Finland, Norway and Iceland’s interior experience long freezing winters (≤ –15 °C / 5 °F), short cool summers; Iceland’s highlands classified as tundra.")
                                Text("Frequent rain on coasts, especially west Norway (over 1,000 mm/year); inland/northern areas see prolonged snow cover lasting several months.")
                                Text("Summer (Jun–Aug): Coastal highs ~17 °C (63 °F); inland up to ~22 °C; Iceland generally cooler at 10–16 °C.")
                                Text("Winter (Dec–Feb): Coastal ~0 °C (32 °F); inland averages −5 to −10 °C (14–23 °F); far north ≤ –15 °C; Iceland lowlands ~0 °C, highlands ~–10 °C or colder.")
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
                        
                            .padding(.bottom, 5)
                        
                        HStack(spacing: 20) {
                            NavigationLink(destination: NEuro()) {
                                Text("Men's")
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)
                                
                            }
                            
                            NavigationLink(destination: NEuro()) {
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
                        
                        NavigationLink(destination: BeautySouthAsia()) {
                            Text("Both")
                                .frame(width: 350, height: 20)
                            
                                .padding()
                                .background(Color.purple)
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
                    .padding()
                    Spacer()
                    
                }
            }
        }
    }
    }
    
    #Preview {
        NEuro()
    }
    

