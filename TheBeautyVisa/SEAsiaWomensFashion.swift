import SwiftUI

struct FashionItem3: Identifiable {
  let id = UUID()
  let imageName: String
  let description: String
}

struct SEAsiaWomensFashion: View {
  let fashionItems = [
    FashionItem3(imageName: "sea1", description: "Traditional Thai chong kraben with a silk sabai and gold jewelry."),
    FashionItem3(imageName: "sea2", description: "Y2K streetwear with a tank top, boxer shorts, and leg warmers."),
    FashionItem3(imageName: "sea3", description: "White halter top with a woven straw hat."),
    FashionItem3(imageName: "sea4", description: "Formal Thai dress with silk wrap and gold jewelry.")
  ]

  let columns = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]

  var body: some View {
    NavigationStack {
      ZStack(alignment: .bottom) {
        Color(.systemBackground).ignoresSafeArea()

        ScrollView {
          VStack {
            Text("Women's Fashion")
              .font(.largeTitle)
              .fontWeight(.bold)
              .padding()

            LazyVGrid(columns: columns, spacing: 20) {
              ForEach(fashionItems) { item in
                FlipCardView3(item: item)
              }
            }
            .padding()
          }
          .padding(.bottom, 90)
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
  }
}

struct FlipCardView3: View {
  let item: FashionItem3
  @State private var flipped = false
  @State private var rotation = 0.0

  var body: some View {
    ZStack {
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
      withAnimation(.easeInOut(duration: 0.6)) {
        rotation += 180
        flipped.toggle()
      }
    }
  }
}

struct ToolbarButton3: View {
  let systemName: String
  let color: Color

  var body: some View {
    Image(systemName: systemName)
      .resizable()
      .scaledToFit()
      .frame(width: 25, height: 25)
      .foregroundColor(color)
  }
}

#Preview {
  SEAsiaWomensFashion()
}
