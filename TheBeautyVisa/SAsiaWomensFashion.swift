//
//  SAsiaWomensFashion.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI
struct SAsiaWomensFashionItem: Identifiable{
    let id = UUID()
    let imageName: String
    let description: String
}

struct SAsiaWomensFashion: View {
    let fashionItems = [
        FashionItem(imageName: "image1w" , description: "Mixing modern wear with traditional by pairing an orange kurta with boot cut jeans with a colorful shawl."),
        FashionItem(imageName: "image2w" , description: "Another example of a modern outfit with traditional roots. white tank top with jeans and a colorful shawl."),
        FashionItem(imageName: "image3w" , description: "A more traditional and modest outfit with a dark pink shawl around the head."),
        FashionItem(imageName: "image4w" , description: "An elegant orange salwar, perfect for any traditional event.")
        
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body : some View {
        ScrollView {
            VStack{
                Text("Women's Fashion")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .center)
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(fashionItems){item in FlipCardView(item:item)
                    }
                }
                .padding()
            }
        }
    }
}

struct SAsiaWomensFashionFlipCardView: View {
    let item: FashionItem
    @State private var flipped = false
    @State private var rotation = 0.0
    var body: some View{
        ZStack {
            if flipped{
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.gray.opacity(0.2))
                    .frame(height:200)
                    .overlay(
                        Text(item.description)
                            .padding()
                            .multilineTextAlignment(.center)
                            .rotation3DEffect(.degrees(180), axis:(x:0, y:1, z:0))
                    )
                    .opacity(flipped ? 1 : 0)
            } else {
                Image(item.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height:200)
                    .clipped()
                    .cornerRadius(15)
                    .opacity(flipped ? 0:1)
            }
        }
        .rotation3DEffect (.degrees(rotation), axis: (x: 0, y: 1, z: 0))
        .onTapGesture{
            withAnimation(.easeInOut(duration: 0.6)){
                rotation += 180
                flipped.toggle()
                
            }
        }
    }
}
    
    
#Preview {
    SAsiaWomensFashion()
}
