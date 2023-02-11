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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
           Spacer()
            
            Button("Show Message") {
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "You Are Fantastic",
                                "Fabulous, That's You!",
                                "You Make Me Smile",
                                "When The Genius Bar Needs Help, They Call You!"]
                
                // generate a random messageNumber to use as an index
                // if messageNumber == lastMessageNumber {
                //      keep generating a new random messageNumber
                //      until you get a messageNumber != lastMessageNumber
                // set messageString to messages [messageNumber]
                // update the lastMessageNumber with messageNumber
                
                var messageNumber = Int.random(in: 0...messages.count-1)
                while messageNumber == lastMessageNumber {
                    messageNumber = Int.random(in: 0...messages.count-1)
                }
                
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber = Int.random(in: 0...9)
                while imageNumber == lastImageNumber {
                    imageNumber = Int.random(in: 0...9)
                }
                imageName = "image\(Int.random(in: 0...9))"
                lastImageNumber = imageNumber
                
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
