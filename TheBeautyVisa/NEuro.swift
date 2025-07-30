import SwiftUI

struct NEuro: View {
  var body: some View {
    VStack{
      Text("Northern Europe")
        .font(.system(size: 30))
        .fontWeight(.semibold)
        .padding(.bottom, -15)
      Image("northerneurope")
        .resizable()
        .frame(width: 300, height: 150)
        .clipShape(RoundedRectangle(cornerRadius: 25))
        .padding()
    }
  }
}
#Preview {
  NEuro()
}
