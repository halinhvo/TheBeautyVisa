import SwiftUI

struct SEAsia: View {
  var body: some View {
    VStack{
      Text("Southeastern Asia")
        .font(.system(size: 30))
        .fontWeight(.semibold)
        .padding(.bottom, -15)
      Image("seaimg")
        .resizable()
        .frame(width: 300, height: 150)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .padding()
    }
  }
}
#Preview {
  SEAsia()
}
