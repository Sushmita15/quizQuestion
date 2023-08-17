//
//  ContentView.swift
//  quizQuestion
//
//  Created by scholar on 8/16/23.
//orange: #C45824
//Brown: #855141
//green: #556B2F
//beige: #FBEDCD

import SwiftUI

struct quizQuestion: View {
    let deviceBg = #colorLiteral(red: 0.9655330777, green: 0.8915256858, blue: 0.7311252952, alpha: 1)
    var body: some View {

        NavigationStack {
            ZStack {
                Color(deviceBg)
                    .ignoresSafeArea()
            
                VStack {
                    
                    Text("What activity do you want to do?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.769, green: 0.349, blue: 0.2))
                        .multilineTextAlignment(.center)
                    Spacer().frame(height: 20)
                        .padding(.vertical)
                    
                    
               /*     Button("Food") {
                    }
                    .padding()
                    .frame(width: 200.0)
                    .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    Spacer().frame(height: 50)*/
                    
                    NavigationLink(destination: boroughQuestion()) {
                        NavigationStack {
                            Text("Food")
                                .padding()
                                .frame(width: 200.0)
                                .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            Spacer().frame(height: 50)
                        }
                        
                    }
                    
                    NavigationLink(destination: boroughQuestion()) {
                        NavigationStack {
                            Text("Kid Activities")
                                .padding()
                                .frame(width: 200.0)
                                .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            Spacer().frame(height: 50)
                        }
                        
                    }
                    
                    
                    
                    Button("Activities") {
                    }
                    .padding()
                    .frame(width: 200.0)
                    .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    Spacer().frame(height: 50)
                    
                    NavigationLink(destination: boroughQuestion()) {
                        NavigationStack {
                            Text("Shopping")
                                .padding()
                                .frame(width: 200.0)
                                .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            Spacer().frame(height: 50)
                        }
                    }
                    
                    
                    
                    
                }
                
            }}
            
        }
        
        
    }
        


struct quizQuestion_Previews: PreviewProvider {
    static var previews: some View {
        quizQuestion()
    }
}
