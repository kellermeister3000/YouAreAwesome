//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Philip Keller on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                
//                if messageString == message1 {
//                    messageString = message2
//                } else {
//                    messageString = message1
//                }
                
                // Replaced with a swifty Ternary Operator
                messageString = (messageString == message1 ? message2 : message1)
                imageName = (imageName == "image0" ? "image1" : "image0")
                
            }
            .buttonStyle(.borderedProminent)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
