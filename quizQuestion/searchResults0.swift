//
//  searchResults0.swift
//  quizQuestion
//
//  Created by scholar on 8/16/23.
//
//searchResults0
import SwiftUI

class productsViewModel: ObservableObject {
    @Published var products: [Item] = [
        Item(imageName: "The Painted Pot", title: "The Painted Pot", address: "Location: 59 Meserole Ave Brooklyn, NY 11222"),
        Item(imageName: "puppet", title: "Puppetworks", address: "Location: 338 Sixth Ave Brooklyn, NY 11215"),
        Item(imageName: "lola", title: "Lola Tots", address: "Location: 1109 Fulton St Brooklyn, NY 11238"),
    ]
    
    func toggleFavorite(for product: Item) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].isFavorite.toggle()
        }
    }
}



struct searchResults0: View {
    @ObservedObject var viewModel = productsViewModel()
    
    
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
                    

                    List(viewModel.products) { product in
                        ScrollView {
                            VStack {
                              //  ForEach(items) { item in
                                    HStack {
                                        Image(product.imageName)
                                            .resizable(resizingMode: .stretch)
                                            .aspectRatio(contentMode: .fill)
                                            .scaledToFit()
                                            .frame(width: 130.0)
                                        VStack {
                                            Text(product.title)
                                                .font(.headline)
                                                .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                                            Text(product.address)
                                                .font(.callout)
                                                .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                                        }
                                        .padding(.leading)
                                        Button(action: {
                                            viewModel.toggleFavorite(for: product)
                                        }) {
                                            Image(systemName: product.isFavorite ? "heart.fill" : "heart")
                                                .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                                        }
                                        
                                       

                                        
                                    }//hstack
                                    .frame(width: 350, height: 150)
                                
                                    .cornerRadius(10)
                                    .shadow(radius: 3)
                                    
                               // }//
                            }
                            // .padding()
                        }  //scrollView
                        

                    }
                    
                }}
            
        }}
}


struct searchResults0_Previews: PreviewProvider {
    static var previews: some View {
        searchResults0()
    }
}
