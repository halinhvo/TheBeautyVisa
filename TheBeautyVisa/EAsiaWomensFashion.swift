import SwiftUI
struct FashionItem4: Identifiable{
 let id = UUID()
 let imageName: String
 let description: String
}
struct EAsiaWomensFashion: View {
 let fashionItems = [
  FashionItem(imageName: "jeanskirt", description: "Minimalist jean skirt paired with a top"),
  FashionItem(imageName: "earmuffs", description: "Layered clothing "),
  FashionItem(imageName: "yellow", description: "Graphics tees and jean shorts"),
  FashionItem(imageName: "cold", description: "Caps are essential for sun protection")
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
