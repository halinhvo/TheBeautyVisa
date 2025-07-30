import SwiftUI
struct EastAsia: View {
  var body: some View {
    ScrollView {
      VStack {
        Text("East Asia")
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
              Text("Cold in the north, warm and humid in the south, dry in inland/high areas.")
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
      }
      .padding()
      Divider().padding(.vertical)
      Spacer()
    }
  }
}
#Preview {
  EastAsia()
}
