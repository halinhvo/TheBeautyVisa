import SwiftUI

struct Europe: View {
    
    var body: some View {
        
        VStack {
            
            Text("Europe")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Image("eu-c-03 (1)")
                .resizable()
                .frame(width: 225, height: 175)
                .padding()
                
            
            HStack(spacing: 10) {

                NavigationLink("North Europe", destination: NEuro())

                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                                
                NavigationLink("South Europe", destination: Europe())
                    .frame(width: 100, height: 50)                   
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
              
            }
            .padding()
            
            HStack(spacing: 10) {

                NavigationLink("East Europe", destination: Europe())
                    .frame(width: 100, height: 50)
                 
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("West Europe", destination: Europe())
                    .frame(width: 100, height: 50)
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
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
    Europe()
}

