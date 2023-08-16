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
    var body: some View {
        ZStack{
            Color(deviceBg)
                .ignoresSafeArea()
            
//Title:
        VStack {
            Text("Results for shopping in Brooklyn")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(30)
//First locatoin
            Text("Name of place")
                .font(.title3)
        HStack{
            Image("blankImage")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 130.0)
            
            VStack(alignment: .leading){
                Text("Location:")
                Text("Hours:")
                Text("Rating:")
            }.padding(.leading)
                }
//padding1
        .padding(.bottom, 20)
        .padding(.trailing, 100)
            
//Second locatoin
        Text("Name of place")
            .font(.title3)
        HStack{
            Image("blankImage")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 130.0)
            VStack(alignment: .leading){
                Text("Location:")
                Text("Hours:")
                Text("Rating:")
            }.padding(.leading)
                }
//padding2
        .padding(.bottom, 20)
        .padding(.trailing, 100)
            
//Third locatoin
            Text("Name of place")
                .font(.title3)
        HStack{
            Image("blankImage")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 130.0)
            VStack(alignment: .leading){
                Text("Location:")
                Text("Hours:")
                Text("Rating:")
            }.padding(.leading)
                }
//padding3
        .padding(.trailing, 100)
        }
        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            searchResults0()
        }
    }
}
