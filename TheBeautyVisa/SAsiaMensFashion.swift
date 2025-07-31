//
// MensFashionSouthAsia.swift
// TheBeautyVisa
//
// Created by Scholar on 7/30/25.
//
import SwiftUI
struct FashionItem: Identifiable{
  let id = UUID()
  let imageName: String
  let description: String
}
struct SAsiaMensFashion: View {
  let fashionItems = [
    FashionItem(imageName: "Image 1", description: "Simply wear a blue kurta with a white shawl around the neck"),
    FashionItem(imageName: "Image 2", description: "A solid dark colored kurta with white pants"),
    FashionItem(imageName: "Image 3", description: "A white on white moment with a shawl as an accent."),
    FashionItem(imageName: "Image 4", description: "A less traditional more modern outfit with a sweater vest, tshirt underneath and comfy pants")
  ]
  let columns = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  var body: some View {
    ScrollView{
      VStack{
        Text("Men's Fashion")
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding()
        LazyVGrid(columns: columns, spacing: 20){
          ForEach(fashionItems) { item in FlipCardView(item:item)
          }
        }
        .padding()
          
          Text("Go to Women's Fashion? →")
              .font(.headline)
              .multilineTextAlignment(.center)
              .frame(maxWidth: .infinity)
              .padding(.vertical)
          NavigationLink("Take me there!", destination: SAsiaWomensFashion())
              .frame(width: 150, height: 20)
              .padding()
              .background(Color(red: 227/255, green: 167/255, blue: 5/255))
              .foregroundColor(.white)
              .cornerRadius(10)
              .font(.headline)

          Spacer()
              .frame(height: 100)
      }
    }
  }
}
struct FlipCardView: View {
  let item: FashionItem
  @State private var flipped = false
  @State private var rotation = 0.0
  var body: some View{
    ZStack{
      if flipped {
        RoundedRectangle(cornerRadius: 15)
          .fill(Color.gray.opacity(0.2))
          .frame(height: 200)
          .overlay(
            Text(item.description)
              .padding()
              .multilineTextAlignment(.center)
              .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
          )
        .opacity(flipped ? 1 : 0)
      } else {
        Image(item.imageName)
          .resizable()
          .scaledToFill()
          .frame(height: 200)
          .clipped()
          .cornerRadius(15)
          .opacity(flipped ? 0 : 1)
      }
    }
    .rotation3DEffect(.degrees(rotation), axis: (x: 0, y: 1, z: 0))
    .onTapGesture {
      withAnimation(.easeInOut(duration: 0.6)){
        rotation += 180
        flipped.toggle()
    }
      }
    }
  }
#Preview {
  SAsiaMensFashion()
}
