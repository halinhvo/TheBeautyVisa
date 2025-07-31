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
      FashionItem(imageName: "image1B", description: "Simply wear a blue kurta with a white shawl around the neck"),
      FashionItem(imageName: "image2B", description: "A solid dark colored kurta with white pants"),
      FashionItem(imageName: "image3B", description: "A white on white moment with a shawl as an accent."),
      FashionItem(imageName: "image4B", description: "A less traditional more modern outfit with a sweater vest, tshirt underneath and comfy pants"),
      FashionItem(imageName: "image5B", description: "A less traditional more modern outfit with a sweater vest, tshirt underneath and comfy pants"),
      FashionItem(imageName: "image6B", description: "A less traditional more modern outfit with a sweater vest, tshirt underneath and comfy pants")
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
