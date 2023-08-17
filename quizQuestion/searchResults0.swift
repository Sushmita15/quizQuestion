//
//  searchResults0.swift
//  quizQuestion
//
//  Created by scholar on 8/16/23.
//
//searchResults0

/* - The painted pot
 https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu
 
 */
/* pupperwork
 https://www.google.com/maps/dir//338+6th+Ave,+Brooklyn,+NY+11215/@40.6710215,-74.0640952,12z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b01f5ac8835:0x65c8235c7ca0088a!2m2!1d-73.981694!2d40.6710508!3e0?entry=ttu
 */
/* lola
 https://www.google.com/maps/dir//1109+Fulton+St,+Brooklyn,+NY+11238/@40.6816331,-73.9623538,16z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b983a7e02ab:0xabf1171c526b7cbf!2m2!1d-73.9572039!2d40.6816332!3e0?entry=ttu
 */

/*
 Link("Terms of Service",
 destination: URL(string: "https://www.apple.com/legal/privacy/en-ww/")!)
 */

import SwiftUI
import WebKit


struct WebView: UIViewRepresentable {
    let url: URL?
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        if let url = url {
            webView.load(URLRequest(url: url))
        }
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {}
}


class productsViewModel: ObservableObject {
    @Published var products: [Item] = [
        Item(imageName: "The Painted Pot", title: "The Painted Pot",  address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 200 Seventh Ave Brooklyn, NY 11215"),
        Item(imageName: "puppet", title: "Puppetworks", address: URL(string: "https://www.google.com/maps/dir//338+6th+Ave,+Brooklyn,+NY+11215/@40.6710215,-74.0640952,12z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b01f5ac8835:0x65c8235c7ca0088a!2m2!1d-73.981694!2d40.6710508!3e0?entry=ttu"), location: "Location: 338 Sixth Ave Brooklyn, NY 11215"),
        Item(imageName: "lola", title: "Lola Tots", address: URL(string: "https://www.google.com/maps/dir//1109+Fulton+St,+Brooklyn,+NY+11238/@40.6816331,-73.9623538,16z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b983a7e02ab:0xabf1171c526b7cbf!2m2!1d-73.9572039!2d40.6816332!3e0?entry=ttu"), location: "Location: 1109 Fulton St Brooklynn, NY 11238"),
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
        Item(imageName: "The Painted Pot", title: "The Painted Pot",  address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 200 Seventh Ave Brooklyn, NY 11215"),
        Item(imageName: "puppet", title: "Puppetworks", address: URL(string: "https://www.google.com/maps/dir//338+6th+Ave,+Brooklyn,+NY+11215/@40.6710215,-74.0640952,12z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b01f5ac8835:0x65c8235c7ca0088a!2m2!1d-73.981694!2d40.6710508!3e0?entry=ttu"), location: "Location: 338 Sixth Ave Brooklyn, NY 11215"),
        Item(imageName: "lola", title: "Lola Tots", address: URL(string: "https://www.google.com/maps/dir//1109+Fulton+St,+Brooklyn,+NY+11238/@40.6816331,-73.9623538,16z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c25b983a7e02ab:0xabf1171c526b7cbf!2m2!1d-73.9572039!2d40.6816332!3e0?entry=ttu"), location: "Location: 1109 Fulton St Brooklynn, NY 11238"),
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
                        .padding(20)
                        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                    //}
                    
                    
                    List(viewModel.products) { product in
                        NavigationLink(destination: WebView(url: product.address), label: {
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
                                            
                                            NavigationLink(destination: MoreInfo()) {
                                                Text(product.title)
                                                    .font(.headline)
                                                .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))}
                                            // Text(product.location)
                                            Button(action: {
                                                if let address = product.address {
                                                    UIApplication.shared.open(address)
                                                }
                                            }) {
                                                Text(product.location) // Display location here as a button
                                                    .font(.callout)
                                                    .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                                                    .underline()
                                            }
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
                            
                        })
                    }
                    
                }}
            
        }}
}


struct searchResults0_Previews: PreviewProvider {
    static var previews: some View {
        searchResults0()
    }
}
