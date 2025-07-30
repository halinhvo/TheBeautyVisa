import SwiftUI
struct FashionItem3: Identifiable{
  let id = UUID()
  let imageName: String
  let description: String
}
struct SEAsiaWomensFashion: View {
  let fashionItems = [
    FashionItem(imageName: "sea1", description: ""),
    FashionItem(imageName: "sea2", description: ""),
    FashionItem(imageName: "sea3", description: ""),
    FashionItem(imageName: "sea4", description: "")
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
struct FlipCardView3: View {
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
  SEAsiaWomensFashion()
}
