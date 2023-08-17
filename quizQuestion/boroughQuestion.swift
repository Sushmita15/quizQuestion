//
//  boroughQuestion.swift
//  quizQuestion
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct boroughQuestion: View {
    let deviceBg = #colorLiteral(red: 0.9655330777, green: 0.8915256858, blue: 0.7311252952, alpha: 1)
    var body: some View {

        NavigationStack {
            ZStack {
                Color(deviceBg)
                    .ignoresSafeArea()
            
                VStack {
                    
                    Text("Which borough would you like to explore?")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.769, green: 0.349, blue: 0.2))
                        .multilineTextAlignment(.center)
                           .padding([.top, .leading, .trailing])
                   Spacer().frame(height: 20)
                        .padding(.vertical)
                    
                    Button("Bronx") {
                    }
                    .padding()
                    .frame(width: 200.0)
                    .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    Spacer().frame(height: 50)
                    
                    NavigationLink(destination: placeHolder()) {
                        NavigationStack {
                            Text("Queens")
                                .padding()
                                .frame(width: 200.0)
                                .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            Spacer().frame(height: 50)
                        }
                        
                    }
                    
    
                    Button("Manhattan") {
                    }
                    .padding()
                    .frame(width: 200.0)
                    .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    Spacer().frame(height: 50)
                    
                    NavigationLink(destination: searchResults0()) {
                        NavigationStack {
                            Text("Brooklyn")
                                .padding()
                                .frame(width: 200.0)
                                .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            Spacer().frame(height: 50)
                        }
                    }
                    Button("Staten Island") {
                    }
                    .padding()
                    .frame(width: 200.0)
                    .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                    .clipShape(Capsule())
                    .foregroundColor(.white)
                    Spacer().frame(height: 50)
                    
                    
                    
                    
                }
                
            }}
            
        }
        
        
    }

struct boroughQuestion_Previews: PreviewProvider {
    static var previews: some View {
        boroughQuestion()
    }
}
