import SwiftUI

struct EAsia: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    VStack {
                        Text("Eastern Asia")
                            .fontWeight(.bold)
                            .font(.title)
                        Image("asiabanner")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaleEffect(0.9)
                            .padding(.bottom, 10)
                            .shadow(radius: 3.0)
                        
                        VStack {
                            Text("Things to expect:")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()
                            
                            VStack(alignment: .leading, spacing: 20) {
                                Text("- Countries:")
                                    .font(.headline)
                                Text("China 🇨🇳, Japan 🇯🇵, South Korea 🇰🇷, North Korea 🇰🇵, Taiwan 🇹🇼")
                                    .font(.subheadline)
                                
                                Text("- Climate Features:")
                                    .font(.headline)
                                
                                Group {
                                    Text("Temperate: Cold in the north, warm and humid in the south, dry in inland/high areas.")
                                    Text("Temperatures can range from in the winter being -4°F to 59°F and in the summer being 77°F to 100°F.")
                                    
                                }
                                .font(.subheadline)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                        .background(
                            RoundedRectangle(cornerRadius: 12.0)
                                .fill(Color(.secondarySystemBackground))
                                .shadow(radius: 3.0)
                        )
                        
                        Divider().padding(.vertical)
                        
                        VStack {
                            Text("Fashion")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()
                            
                            HStack {
                                NavigationLink("Men", destination: EAsia())
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)
                                
                                NavigationLink("Women", destination: EAsia())
                                    .frame(width: 150, height: 20)
                                    .padding()
                                    .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                    .font(.headline)
                            }
                            
                            Text("Beauty/Skin/Hair")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding()
                            
                            NavigationLink("Both", destination: EAsia())
                                .frame(width: 150, height: 20)
                                .padding()
                                .background(Color(red: 227/255, green: 167/255, blue: 5/255))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                                .font(.headline)
                        }
                        
                        Spacer()
                            .frame(height: 100)
                    }
                    .padding()
                }
                
               
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        ToolbarButton(systemName: "house", color: .gray)
                    }
                    Spacer()
                    ToolbarButton(systemName: "bell", color: .gray)
                    Spacer()
                    NavigationLink(destination: Asia()) {
                        ToolbarButton(systemName: "airplane", color: .gray)
                    }
                    Spacer()
                    ToolbarButton(systemName: "gear", color: .gray)
                    Spacer()
                }
                .padding(.vertical, 10)
                .background(Color.white.shadow(radius: 2))
            }
        }
    }
}

#Preview {
    EAsia()
}
