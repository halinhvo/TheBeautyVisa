import SwiftUI

struct WEuroWomensFashionItem: Identifiable{
  let id = UUID()
  let imageName: String
  let description: String
}
struct WEuroWomensFashion: View {
  let fashionItems = [
    FashionItem(imageName: "westeurowomensfashion-casual", description: "A sleeveless, high-neck white top paired with a long, flowy white skirt, accessorized with black strappy sandals."),
    FashionItem(imageName: "westeurowomensfashion-casual2", description: "A beige oversized button-up jacket layered over a high-neck sweater, paired with a short skirt, white socks, and black loafers."),
    FashionItem(imageName: "westeurowomensfashion-casual3", description: "A white lace long-sleeve blouse paired with high-waisted blue jeans."),
    FashionItem(imageName: "westeurowomensfashion-casual4", description: "A beige short-sleeve top with wide-leg patterned trousers.")
  ]
  let columns = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  var body: some View {
    ScrollView{
      VStack{
        Text("Western Europe Women's Fashion")
          .font(.largeTitle)
          .fontWeight(.bold)
          .padding()
        LazyVGrid(columns: columns, spacing: 20){
          ForEach(fashionItems) { item in FlipCardView(item:item)
          }
        }
        .padding()
        Text("Western European women's fashion trends feature suede pieces, patterned wide-leg trousers, and earthy tones like beige and sage green. Leopard print, vibrant colors like saffron yellow, cargo trousers, and '90s-inspired mules are also popular, blending comfort with chic style.")
              .padding()
        Text("Go to Men's Fashion? →")
              .font(.headline)
              .multilineTextAlignment(.center)
              .frame(maxWidth: .infinity)
              .padding(.vertical)
        NavigationLink("Take me there!", destination: WEuroMensFashion())
              .frame(width: 150, height: 20)
              .padding()
              .background(Color(red: 227/255, green: 167/255, blue: 5/255))
              .foregroundColor(.white)
              .cornerRadius(10)
              .font(.headline)
      }
      .padding()
      Spacer()
      HStack {
          Spacer()
          NavigationLink(destination: ContentView()) {
              ToolbarButton(systemName: "house", color: .gray)
          }
          Spacer()
          ToolbarButton(systemName: "bell", color: .gray)
          Spacer()
          NavigationLink(destination: Europe()) {
              ToolbarButton(systemName: "airplane", color: .gray)
          }
          Spacer()
          ToolbarButton(systemName: "gear", color: .gray)
          Spacer()
      }
    }
  }
}
struct WEuroWomensFashionFlipCardView: View {
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
  WEuroWomensFashion()
}
