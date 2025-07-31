import SwiftUI

struct EAFashionItem: Identifiable {
    let id = UUID()
    let imageName: String
    let description: String
}

struct EAsiaBeauty: View {
    let fashionItems = [
        FashionItem(imageName: "eab", description: "Protect your skin by using this SPF (50) that is non-greasy and lightweight on your skin! (Biore UV Aqua Rich)"),
        FashionItem(imageName: "eab2", description: "Want silky, smooth hair? This shampoo smoothens and is recommended for thin hair. (Shiseido Tsubaki Shampoo)"),
        FashionItem(imageName: "eab3", description: "This hydrating lotion suits all skin types and works extremely well in humid climates! (Hada Labo Gokujyun Hyaluronic Acid Lotion)"),
        FashionItem(imageName: "eab4", description: "Dewy skin, soft lips, and minimal makeup is precise for the typical east asian look!")
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        Text("East Asia Beauty Products")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding()
                            .multilineTextAlignment(.center)

                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(fashionItems) { item in
                                FlipCardView(item: item)
                            }
                        }
                        .padding()

                        Text("go back to East Asia? →")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical)
                        NavigationLink("take me there!", destination: EAsia())
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

struct EAFlipCardView: View {
    let item: FashionItem
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

#Preview {
    EAsiaBeauty()
}
