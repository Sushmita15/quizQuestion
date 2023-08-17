/*
 https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu
 */




import SwiftUI

struct placeHolder: View {
    let items: [Item] = [
        Item(imageName: "The Painted Pot", title: "The Painted Pot",  address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 200 Seventh Ave Brooklyn, NY 11215"),
        Item(imageName: "puppet", title: "Puppetworks", address: URL(string: "https://www.google.com/maps/dir//338+6th+Ave,+Brooklyn,+NY+11215/@40.6710215,-74.0640952,12z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b01f5ac8835:0x65c8235c7ca0088a!2m2!1d-73.981694!2d40.6710508!3e0?entry=ttu"), location: "Location: 338 Sixth Ave Brooklyn, NY 11215"),
        Item(imageName: "lola", title: "Lola Tots", address: URL(string: "https://www.google.com/maps/dir//1109+Fulton+St,+Brooklyn,+NY+11238/@40.6816331,-73.9623538,16z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b983a7e02ab:0xabf1171c526b7cbf!2m2!1d-73.9572039!2d40.6816332!3e0?entry=ttu"), location: "Location: 1109 Fulton St Brooklynn, NY 11238"),
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

