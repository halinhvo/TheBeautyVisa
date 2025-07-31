import SwiftUI

struct EAsiaWomensFashionItem: Identifiable{

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
      Text("Clothing Overview: Mostly casual minimalistic wear. Wear skirts and light fabrics during the summer and in the winter layer up your clothing!")
          .font(.headline)
          .multilineTextAlignment(.center)
          .frame(maxWidth: .infinity)
          .padding(.vertical)
      Text("go to Women's Fashion? →")
          .font(.headline)
          .multilineTextAlignment(.center)
          .frame(maxWidth: .infinity)
          .padding(.vertical)
      NavigationLink("take me there!", destination: EAsiaWomensFashion())
          .frame(width: 150, height: 20)
          .padding()
          .background(Color(red: 227/255, green: 167/255, blue: 5/255))
          .foregroundColor(.white)
          .cornerRadius(10)
          .font(.headline)
      
  }
 }
    HStack {
        Spacer()
        NavigationLink(destination: ContentView()) {
            ToolbarButton(systemName: "house", color: .gray)
        }
        Spacer()
        ToolbarButton(systemName: "bell", color: .gray)
        Spacer()
        NavigationLink(destination: Asia()) {
            ToolbarButton(systemName: "airplane", color: .gray)
        }
        Spacer()
        ToolbarButton(systemName: "gear", color: .gray)
        Spacer()
    }
    .padding(.vertical, 10)
    .background(Color.white.shadow(radius: 2))
}
}
struct EAsiaWomensFashionFlipCardView: View {
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
