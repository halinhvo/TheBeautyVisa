import SwiftUI
struct FashionItem4: Identifiable{
let id = UUID()
let imageName: String
let description: String
}
struct EAsiaWomensFashion: View {
let fashionItems = [
 FashionItem(imageName: "jeanskirt", description: "Minimalist jean skirt paired with a top"),
 FashionItem(imageName: "earmuffs", description: "Layered clothing for the cold weather in the winter"),
 FashionItem(imageName: "yellow", description: "yellow flowy skirt with a lightweight tank"),
 FashionItem(imageName: "cold", description: "Scarf paired with a heavy jacket and jeans")

]
let columns = [
 GridItem(.flexible()),
 GridItem(.flexible())
]
var body: some View {
 ScrollView{
  VStack{
   Text("Women's Fashion")
    .font(.largeTitle)
    .fontWeight(.bold)
    .padding()
   LazyVGrid(columns: columns, spacing: 20){
    ForEach(fashionItems) { item in FlipCardView(item:item)
    }
   }
   .padding()
      Text("Clothing overview: mostly casual minimalistic wear. During the summer wearing skirts and light fabrics and in the winter layer up your clothing")
          .font(.headline)
          .multilineTextAlignment(.center)
          .frame(maxWidth: .infinity)
          .padding(.vertical)
  }
 }
}
}
struct FlipCardView4: View {
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
EAsiaWomensFashion()
}
