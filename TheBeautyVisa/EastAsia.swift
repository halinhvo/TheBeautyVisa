//
//  EastAsia.swift
//  TheBeautyVisa
//
//  Created by Scholar on 7/29/25.
//

import SwiftUI

struct EastAsia: View {
    var body: some View {
        VStack{
            Text("East Asia")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .padding(.bottom, -15)
            Image("asiabanner")
                .resizable()
                .frame(width: 300, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .padding()
            Text("")
            
            
        }
    }
}

#Preview {
    EastAsia()
}
