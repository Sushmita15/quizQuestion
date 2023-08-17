
import SwiftUI

struct placeHolder: View {
    let items: [Item] = [
        Item(imageName: "The Painted Pot", title: "The Painted Pot", address: "Location: 59 Meserole Ave Brooklynn, NY 11222"),
        Item(imageName: "puppet", title: "Banana", address: "Location: 338 Sixth Ave Brooklyn, NY 11215"),
        Item(imageName: "lola", title: "Orange", address: "Location: 1109 Fulton St Brooklynn, NY 11238"),
        // Add more items here
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(items) { item in
                    VStack(spacing: 8) {
                        Image(item.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                        
                        Text(item.title)
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    .frame(width: 150, height: 180)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                }
            }
            .padding()
        }
    }
}

struct placeHolder_Previews: PreviewProvider {
    static var previews: some View {
        placeHolder()
    }
}

