//
//  favLocationsPG.swift
//  quizQuestion
//
//  Created by Sushmita Mandal on 8/17/23.
//fav
//ItemsViewModel = favLocationPG

// ItemsViewModel.swift
//ProductsListView
/*
import SwiftUI

class ProductsViewModel: ObservableObject {
    @Published var products: [Product] = [
        Product(name: "Product 1"),
        Product(name: "Product 2"),
        // Add more products as needed
    ]
    
    func toggleFavorite(for product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].isFavorite.toggle()
        }
    }
}

struct favLocationPG: View {
    @ObservedObject var viewModel = ProductsViewModel()
    
    var body: some View {
        List(viewModel.products) { product in
            HStack {
                Text(product.name)
                Spacer()
                Button(action: {
                    viewModel.toggleFavorite(for: product)
                }) {
                    Image(systemName: product.isFavorite ? "heart.fill" : "heart")
                }
            }
        }
    }
}

struct FavoritesView: View {
    @ObservedObject var viewModel = ProductsViewModel()
    
    var body: some View {
        List(viewModel.products.filter { $0.isFavorite }) { favoriteProduct in
            Text(favoriteProduct.name)
        }
    }
}

struct favLocationsPG: View {
    var body: some View {
        NavigationView {
            TabView {
                favLocationPG()
                    .tabItem {
                        Image(systemName: "list.bullet")
                        Text("Products")
                    }
                
                FavoritesView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.orange)
                        Text("Favorites")
                    }
            }
        }
    }
}

struct favLocationPG_Previews: PreviewProvider {
    static var previews: some View {
        favLocationPG()
    }
}

/*@main
 struct quizQuestionApp: App {
 var body: some Scene {
 WindowGroup {
 ContentView()
 }
 }
 }
 */
*/
