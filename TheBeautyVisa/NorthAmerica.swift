import SwiftUI

struct NorthAmerica: View {
    
    var body: some View {
        
        VStack {
            
            Text("North America")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Image("usa")
                .resizable()
                .frame(width: 225, height: 175)
                .padding()
                
            
            VStack(spacing: 10) {
                NavigationLink("Northern American", destination: NorthAmerica())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Central American", destination: NorthAmerica())
                    .frame(width: 100, height: 50)
                   
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Carribean", destination: NorthAmerica())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
            }
            .padding()
            
            
                
            
            
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NorthAmerica()
}

