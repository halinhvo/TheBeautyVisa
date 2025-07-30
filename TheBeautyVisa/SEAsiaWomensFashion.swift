import SwiftUI

struct SEAsiaWomensFashion: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                Color(.systemBackground).ignoresSafeArea()
                
                ScrollView {
                    VStack {
                        Text("Women's Fashion")
                            .fontWeight(.bold)
                            .font(.title)
                        Image("")
                    }
                }
            }
        }
    }
}


#Preview {
    SEAsiaWomensFashion()
}
