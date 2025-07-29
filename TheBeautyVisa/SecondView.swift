import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack {
            Text("Asia")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                
            
            HStack(spacing: 10) {
                NavigationLink("East Asia", destination: SecondView())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Southeast Asia", destination: SecondView())
                    .frame(width: 100, height: 50)
                   
                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("South Asia", destination: SecondView())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
            }
            .padding()
            
            HStack(spacing: 10) {
                NavigationLink("Central Asia", destination: SecondView())
                    .frame(width: 100, height: 50)
                 
                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Middle East Asia", destination: SecondView())
                    .frame(width: 100, height: 50)
                
                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
            }
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SecondView()
}

