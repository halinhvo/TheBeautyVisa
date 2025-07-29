import SwiftUI

struct WEuro: View {
  var body: some View {
    VStack{
      Text("Western Europe")
        .font(.system(size: 30))
        .fontWeight(.semibold)
        .padding(.bottom, -15)
      Image("westerneuro")
        .resizable()
        .frame(width: 300, height: 150)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .padding()
    }
  }
}
#Preview {
  WEuro()
}
