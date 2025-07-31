import SwiftUI

struct FashionItem4: Identifiable {
    let id = UUID()
    let imageName: String
    let description: String
}

struct SEAsiaMensFashion: View {
    let fashionItems = [
        FashionItem(imageName: "seamen", description: "Styled with a graphic tee with dark jeans; remember to pack an umbrella during monsoon season!"),
        FashionItem(imageName: "seamen2", description: "White button ups paired with rounded rectangular sunglasses are a must throughout hot summers."),
        FashionItem(imageName: "seamen4", description: "A beachy-beige set is suitable for going out to the pool."),
        FashionItem(imageName: "seamen5", description: "His denim jorts match with a blue sporty tee; don't forget your hat!")
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
                        Text("Southeast Asia Men's Fashion")
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

                        Text("go to Women's Fashion? →")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical)
                        NavigationLink("take me there!", destination: SEAsiaWomensFashion())
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

struct FlipCardView4: View {
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
    SEAsiaMensFashion()
}
