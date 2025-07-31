import SwiftUI
struct FashionItem2: Identifiable{
 let id = UUID()
 let imageName: String
 let description: String
}
struct EAsiaMensFashion: View {
 let fashionItems = [
  FashionItem(imageName: "snow", description: "In the winter men typically wear warm layers with scarves for extra warmth"),
  FashionItem(imageName: "hat", description: "A pair of sweatpants with a quarter zip up"),
  FashionItem(imageName: "shorts", description: "Graphics tees and jean shorts is commonly worn around the streets of Japan and South Korea."),
  FashionItem(imageName: "cap", description: "Caps are essential for sun protection")
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
       NavigationLink("Take me there!", destination: EAsiaWomensFashion())
           .frame(width: 150, height: 20)
           .padding()
           .background(Color(red: 227/255, green: 167/255, blue: 5/255))
           .foregroundColor(.white)
           .cornerRadius(10)
           .font(.headline)
   }
  }
 }
}
struct FlipCardView2: View {
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
 EAsiaMensFashion()
}
