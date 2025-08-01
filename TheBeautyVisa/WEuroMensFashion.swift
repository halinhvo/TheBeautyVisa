import SwiftUI

struct WEuroMensFashionItem: Identifiable{
  let id = UUID()
  let imageName: String
  let description: String
}
struct WEuroMensFashion: View {
    let fashionItems = [
        FashionItem(imageName: "westeuromensfashion-winter", description: "A dark turtleneck sweater with slim-fit navy trousers, layer with a tailored gray-green overcoat."),
        FashionItem(imageName: "westerneuromensfashion-casual", description: "A white linen shirt with sand chinos"),
        FashionItem(imageName: "westeuromensfashion-summer", description: "A patterned orange and white button-down shirt over a fitted white tank top, paired with high-waisted white pants."),
        FashionItem(imageName: "westeuromensfashion-casual2", description: "A loose, dark button-down shirt with rolled-up sleeves paired with relaxed white pants, styled with layered necklaces.")
    ]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView{
            VStack{
                Text("Western Europe Men's Fashion")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(fashionItems) { item in FlipCardView(item:item)
                    }
                }
                .padding()
                Text("Western European men’s fashion in 2025 is polished yet relaxed, combining tailored pieces with casual staples. Vintage touches, sustainable choices, and simple accessories define the modern, effortless look.")
                    .padding()
                Text("Go to Women's Fashion? →")
                    .font(.headline)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                NavigationLink("Take me there!", destination: WEuroWomensFashion())
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
    struct WEuroMensFashionFlipCardView: View {
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
}
#Preview {
  WEuroMensFashion()
}
