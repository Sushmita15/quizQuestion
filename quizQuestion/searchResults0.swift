//
//  searchResults0.swift
//  quizQuestion
//
//  Created by scholar on 8/16/23.
//
//searchResults0
import SwiftUI

struct searchResults0: View {
    let deviceBg = #colorLiteral(red: 0.9655330777, green: 0.8915256858, blue: 0.7311252952, alpha: 1)
    let items: [Item] = [
        Item(imageName: "The Painted Pot", title: "The Painted Pot", address: "Location: 59 Meserole Ave Brooklyn, NY 11222"),
        Item(imageName: "puppet", title: "Puppetworks", address: "Location: 338 Sixth Ave Brooklyn, NY 11215"),
        Item(imageName: "lola", title: "Lola Tots", address: "Location: 1109 Fulton St Brooklyn, NY 11238"),
        // Add more items here
    ]

    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(deviceBg)
                    .ignoresSafeArea()
                VStack {
                    Text("Results for kids activities in Brooklyn")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(30)
                        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                //}
                
                
                ScrollView {
                    VStack {
                        ForEach(items) { item in
                            HStack {
                                Image(item.imageName)
                                    .resizable(resizingMode: .stretch)
                                    .aspectRatio(contentMode: .fill)
                                    .scaledToFit()
                                    .frame(width: 130.0)
                                VStack {
                                    Text(item.title)
                                        .font(.headline)
                                        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                                    Text(item.address)
                                        .font(.callout)
                                        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                                }
                                .padding(.leading)
                            }
                            .frame(width: 350, height: 150)
                            //  .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                        }
                    }
                   // .padding()
                }}}
                
            }}
    }


struct searchResults0_Previews: PreviewProvider {
    static var previews: some View {
        searchResults0()
    }
}
