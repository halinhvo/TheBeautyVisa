import SwiftUI

struct Oceania: View {
    
    var body: some View {
        
        VStack {
            
            Text("Oceania")
                .font(.system(size: 30))
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            Image("aus")
                .resizable()
                .frame(width: 225, height: 175)
                .padding()
                
            
            HStack(spacing: 10) {
                NavigationLink("Australia & NZ", destination: Oceania())
                    .frame(width: 100, height: 50)
                    
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Melanesia", destination: Oceania())
                    .frame(width: 100, height: 50)
                   
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
            }
            .padding()
            
            HStack(spacing: 10) {
                NavigationLink("Polynesia", destination: Oceania())
                    .frame(width: 100, height: 50)
                 
                    .background(Color(red: 228/255, green: 91/255, blue: 59/255))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .fontWeight(.bold)
                
                NavigationLink("Micronesia", destination: Oceania())
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
    Oceania()
}

