//
//  ContentView.swift
//  finalProject
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct ContentView: View {
    let deviceBg = #colorLiteral(red: 0.9655330777, green: 0.8915256858, blue: 0.7311252952, alpha: 1)
    var body: some View {
        NavigationStack {
            ZStack {
                Color(deviceBg)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Welcome to Little Apple!")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(Color(red: 0.329, green: 0.418, blue: 0.185))
                        .multilineTextAlignment(.center)
                        .padding(.top, 60.0)
                        
                    Image("result")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.top)
                        .frame(width: 200.0)
                        
                    
                    Text("Don't know what to do in NYC?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.769, green: 0.344, blue: 0.144))
                        .multilineTextAlignment(.center)
                        .padding(.top, 70.0)
                        
                       
                    NavigationStack {
                        NavigationLink(destination: firstQuestion()) {
                            NavigationStack {
                                Text("Explore")
                                    .padding()
                                    .frame(width: 200.0)
                                    .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                    .clipShape(Capsule())
                                    .foregroundColor(.white)
                                Spacer().frame(height: 50)
                            }
                        }
                 /*       .padding()
                        .buttonStyle(.borderedProminent)
                        .tint(Color(red: 0.769, green: 0.344, blue: 0.144))
                       // .font(.largeTitle)
                        .frame(width: 200.0)*/
                    }
                    .padding(.vertical)
                    
                    
                    
                    HStack(alignment: .bottom){
                        Text("About Us")
                            .font(.caption)
                           // .padding(.top, 175.0)
                            .padding()
                        Spacer()
                     //   Text("Terms & Conditions")
                            
                        Link("Terms of Service",
                              destination: URL(string: "https://www.apple.com/legal/privacy/en-ww/")!)
                        .font(.caption)
                        .padding()
                        
                    }
                    .padding(EdgeInsets(top: 50, leading: 20, bottom: -300, trailing: 0))
                   //  .foregroundColor(Color(red: 0.769, green: 0.344, blue: 0.144))
                    .foregroundColor(Color(red: 0.329, green: 0.418, blue: 0.185))
                    //.padding(.bottom, -300.0)
                    
                }
                
                
                
                
                
                
                
            }}
        .tint(Color(red: 0.769, green: 0.349, blue: 0.2))
    }
        //.padding()
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
