//
//  BeautySouthAsia.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI
struct BeautyItem: Identifiable{
    let id = UUID()
    let imageName: String
    let description: String
}

struct SAsiaBeauty: View {
    let beautyItems = [
      FashionItem(imageName: "image1B", description: "A timeless staple in South Asian beauty used to define the eyes, ward off evil, and enhance cultural identity across generations."),
      FashionItem(imageName: "image2B", description: "a lightweight, gel-based hydrator ideal for South Asia’s hot and humid climate, offering long-lasting hydration without clogging pores—perfect for travelers adjusting to tropical weather."),
      FashionItem(imageName: "image3B", description: "La Roche-Posay Anthelios Melt-In Milk SPF is a dermatologist-recommended, broad-spectrum sunscreen that provides strong sun protection with a non-greasy finish—ideal for shielding skin from South Asia’s intense UV exposure while staying comfortable in heat and humidity."),
      FashionItem(imageName: "image4B", description: "Parachute Coconut Oil is a beloved staple in South Asian beauty, used for deep hair nourishment, scalp cooling, and natural shine—rooted in tradition and perfect for combating dryness caused by heat and pollution."),
      FashionItem(imageName: "image5B", description: "This look features bold winged eyeliner, peachy nude lips, and radiant bronzed tones.")
    ]
    let columns = [
      GridItem(.flexible()),
      GridItem(.flexible())
    ]
    var body: some View {
      ScrollView{
        VStack{
          Text("Beauty/Skin/Hair")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding()
          LazyVGrid(columns: columns, spacing: 20){
            ForEach(beautyItems) { item in FlipCardView(item:item)
            }
          }
          .padding()
        }
      }
    }
  }
struct SAsiaBeautyFlipCardView: View {
  let item: BeautyItem
  @State private var flipped = false
  @State private var rotation = 0.0
    var body: some View{
        ZStack {
            if flipped{
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height:200)
                    .overlay(
                        Text(item.description)
                            .padding()
                            .multilineTextAlignment(.center)
                            .rotation3DEffect(.degrees(180), axis:(x:0, y:1, z:0))
                    )
                    .opacity(flipped ? 1 : 0)
            } else {
                Image(item.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .cornerRadius(15)
                    .opacity(flipped ? 0:1)
            }
        }
        .rotation3DEffect (.degrees(rotation), axis: (x: 0, y: 1, z: 0))
        .onTapGesture{
            withAnimation(.easeInOut(duration: 0.6)){
                rotation += 180
                flipped.toggle()
                
            }
        }
    }
}
    
#Preview {
    SAsiaBeauty()
}
