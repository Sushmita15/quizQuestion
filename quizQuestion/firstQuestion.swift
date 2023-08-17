//
//  firstQuestion.swift
//  quizQuestion
//
//  Created by scholar on 8/16/23.
//

import SwiftUI

struct firstQuestion: View {
    let deviceBg = #colorLiteral(red: 0.9655330777, green: 0.8915256858, blue: 0.7311252952, alpha: 1)
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color (deviceBg)
                    .ignoresSafeArea()
                
                VStack {
                    Text ("Ready to take the quiz so we can match you with an experience?")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.77, green: 0.344, blue: 0.144))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(45.001)
                    
                    
                    
                    
                    NavigationLink(destination:quizQuestion()){
                        
                        NavigationStack {
                            Text("Continue")
                                .padding()
                                .frame(width: 200.0)
                                .background(Color(red: 0.769, green: 0.349, blue: 0.2))
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                            Spacer().frame(height: 50)
                        }
                    }
                }
                
            }
        }
    }
}

struct firstQuestion_Previews: PreviewProvider {
    static var previews: some View {
        firstQuestion()
    }
}
