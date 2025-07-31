//
//  SAsiaWomensFashion.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/30/25.
//

import SwiftUI

struct SAsiaWomensFashion: View {
    let fashionItems = [
        FashionItem(imageName: "image1w" , description: "Mixing modern wear with traditional by pairing an orange kurta with boot cut jeans with a colorful shawl."),
        FashionItem(imageName: "image2w" , description: "Mixing modern wear with traditional by pairing an orange kurta with boot cut jeans with a colorful shawl."),
        FashionItem(imageName: "image3w" , description: "Mixing modern wear with traditional by pairing an orange kurta with boot cut jeans with a colorful shawl."),
        FashionItem(imageName: "image4w" , description: "Mixing modern wear with traditional by pairing an orange kurta with boot cut jeans with a colorful shawl.")
        
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
                    ForEach(fashionItems){item in
                        VStack{
                            Image(item.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height : 150)
                                .clipped()
                                .cornerRadius(10)
                            Text(item.description)
                                .multilineTextAlignment(.center)
                                .padding(.horizontal,5)
                        }
                        .padding()
                    }
                    
                }
                .padding()
            }
        }
    }
    }


#Preview {
    SAsiaWomensFashion()
}
