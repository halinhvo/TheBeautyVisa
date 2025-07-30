//
//  SouthAsia.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct SouthAsia: View {
    var body: some View {
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
                            Text("\n•Hot and humid most of the year, with monsoon seasons (June–Sept) and cooler winters (Dec–Feb, varies by region\n•Hot and humid most of the year, with monsoon seasons (June–Sept) and cooler winters (Dec–Feb, varies by region)\n•Dry seasons in parts of northern India, Pakistan, and Nepal.\n•High UV Index year-round — sunscreen is essential.")
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
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }

                    NavigationLink(destination: WomensFashionSouthAsia()) {
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

            // Beauty Section
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
        }
                
    }
}

#Preview {
    SouthAsia()
}
