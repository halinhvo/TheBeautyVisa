import SwiftUI

struct FashionItem6: Identifiable {
    let id = UUID()
    let imageName: String
    let description: String
}

struct SEAsiaBeauty: View {
    let fashionItems = [
        FashionItem(imageName: "seab", description: "Hydration is key! This lightweight shampoo keeps hair fresh without greasiness. (Sunsilk Naturals Coconut Shampoo)"),
        FashionItem(imageName: "seab2", description: "With humid climates, this frizz control treatment helps with heat protection. (Ellips Hair Vitamin Capsules)"),
        FashionItem(imageName: "seab4", description: "Oily skin? This foamy light cleanser helps with sensitive skin while removing excess oil! (Senka Perfect Whip Cleanser)"),
        FashionItem(imageName: "seab3", description: "This look is achievable with glowy skin, soft brows, deep contouring, and a fox eye makeup for a fresh look!")
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
                        Text("Southeast Asia Beauty Products")
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

                        Text("go back to Southeast Asia? →")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical)
                        NavigationLink("take me there!", destination: SEAsia())
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

struct FlipCardView6: View {
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
    SEAsiaBeauty()
}
