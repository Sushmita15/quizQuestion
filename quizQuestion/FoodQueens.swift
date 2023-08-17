//
//  FoodQueens.swift
//  quizQuestion
//
//  Created by scholar on 8/17/23.
//
/*
 
 
 [ Item(imageName: "inca", title: "Inca Pasia", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 25-71 Francis Lewis BLVD, Queens, NY 11358"),
 Item(imageName: "vert", title: "Vert Frais",address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 43-10 Crescent St, Queens, NY 11101"),
 Item(imageName: "fuzi", title: "Fuzi Pasta Co.", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "Location: 68-26 Fresh Meadow Ln, Queens, NY 11365"),
 Item(imageName: "queensboro", title: "The Queensboro", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "80-02 Northern Blvd, Queens, NY 11372"),
 Item(imageName: "tavern", title: "Neir's Tavern", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "Location: 87-48 78th St, Queens, NY 11421"),
 Item(imageName: "tong", title: "Tong_NYC",address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 7301 37th Ave, Queens, NY 11372"),
 // Add more items here
 ]
 
 //   FoodQueens
 
 */

import SwiftUI
import WebKit


struct XebView: UIViewRepresentable {
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


class rroductsViewModel: ObservableObject {
    @Published var products: [Item] =
    [ Item(imageName: "inca", title: "Inca Pasia", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 25-71 Francis Lewis BLVD, Queens, NY 11358"),
      Item(imageName: "vert", title: "Vert Frais",address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 43-10 Crescent St, Queens, NY 11101"),
      Item(imageName: "fuzi", title: "Fuzi Pasta Co.", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "Location: 68-26 Fresh Meadow Ln, Queens, NY 11365"),
      Item(imageName: "queensboro", title: "The Queensboro", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "80-02 Northern Blvd, Queens, NY 11372"),
      Item(imageName: "tavern", title: "Neir's Tavern", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "Location: 87-48 78th St, Queens, NY 11421"),
      Item(imageName: "tong", title: "Tong_NYC",address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 7301 37th Ave, Queens, NY 11372"),
      // Add more items here
    ]
    
    func toggleFavorite(for product: Item) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].isFavorite.toggle()
        }
    }
}



struct FoodQueens: View {
    @ObservedObject var viewModel = rroductsViewModel()
    
    
    let deviceBg = #colorLiteral(red: 0.9655330777, green: 0.8915256858, blue: 0.7311252952, alpha: 1)
    
    
    let items: [Item] = [
        Item(imageName: "inca", title: "Inca Pasia", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 25-71 Francis Lewis BLVD, Queens, NY 11358"),
        Item(imageName: "vert", title: "Vert Frais",address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 43-10 Crescent St, Queens, NY 11101"),
        Item(imageName: "fuzi", title: "Fuzi Pasta Co.", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "Location: 68-26 Fresh Meadow Ln, Queens, NY 11365"),
        Item(imageName: "queensboro", title: "The Queensboro", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "80-02 Northern Blvd, Queens, NY 11372"),
        Item(imageName: "tavern", title: "Neir's Tavern", address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"),location: "Location: 87-48 78th St, Queens, NY 11421"),
        Item(imageName: "tong", title: "Tong_NYC",address: URL(string: "https://www.google.com/maps/dir//59+Meserole+Ave,+Brooklyn,+NY+11222/@40.7994615,-73.947738,15z/data=!4m9!4m8!1m0!1m5!1m1!1s0x89c259415fc91469:0x7bf46304b9277564!2m2!1d-73.9550783!2d40.7264229!3e0?entry=ttu"), location: "Location: 7301 37th Ave, Queens, NY 11372"),
        // Add more items here
    ]
    
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color(deviceBg)
                    .ignoresSafeArea()
                VStack {
                    
                    Text("Results for Food in Queens")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .padding(20)
                        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                    //}
                    
                    
                    List(viewModel.products) { product in
                        NavigationLink(destination: XebView(url: product.address), label: {
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


struct FoodQueens_Previews: PreviewProvider {
    static var previews: some View {
        FoodQueens()
    }
}
