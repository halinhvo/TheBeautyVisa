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
                        HStack{
                            Image("sea1")
                            Image("sea2")
                            
                           
                        }
                        HStack{
                            Image("sea3")
                            Image("sea4")
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    SEAsiaWomensFashion()
}
