//
//  WesternEurope.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct WEuro: View {
    var body: some View {
        NavigationStack {
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
                    VStack {
                        Text("Things to expect:")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding()
                        VStack(alignment: .leading, spacing: 20) {
                            Text("- Countries:")
                                .font(.headline)
                            Text("France 🇫🇷, Germany 🇩🇪, Netherlands 🇳🇱, Belgium 🇧🇪, Austria 🇦🇹, Switzerland 🇨🇭, Luxembourg 🇱🇺")
                                .font(.subheadline)
                            Text("- Climate Features:")
                                .font(.headline)
                            
                            Group {
                                Text("Temperate: Four distinct seasons — cool winters, warm summers, mild spring and fall.")
                                Text("Rain: Frequent showers, especially in places like the Netherlands and Belgium. Always bring a cute trench or umbrella.")
                                Text("Summers: 70–85°F (21–29°C), popular for travel.")
                                Text("Winters: 30–45°F (–1 to 7°C), with some snowfall in places like Austria and Switzerland.")
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
                        NavigationLink(destination: MensFashionSouthAsia()) {
                            Text("Men's")
                                .frame(width: 150, height: 20)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.headline)

                        }
                        
                        NavigationLink(destination: WomensFashionSouthAsia()) {
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
                }
                .padding()
                Spacer()
                
            }
        }
    }
}

#Preview {
    WEuro()
}

