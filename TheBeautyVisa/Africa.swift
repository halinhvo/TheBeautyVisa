import SwiftUI

struct Africa: View {
    
    var body: some View {
        
        VStack {
            
            Text("Africa")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Image("af-c-03 (1)")
                .resizable()
                .frame(width: 225, height: 175)
                .padding()
                
            
            HStack(spacing: 10) {
                NavigationLink("North Africa", destination: Africa())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("West Africa", destination: Africa())
                    .frame(width: 100, height: 50)
                   
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Central Africa", destination: Africa())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
            }
            .padding()
            
            HStack(spacing: 10) {
                NavigationLink("East Africa", destination: Africa())
                    .frame(width: 100, height: 50)
                 
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("South Africa", destination: Africa())
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
    Africa()
}


