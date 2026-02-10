//
//  ContentView.swift
//  War Card Game
//
//  Created by Mark Nair on 2/10/26.
//

import SwiftUI

struct ContentView: View {
    
    var playerCard = "card11"
    var computerCard = "card5"
    var playerScore = 0
    var computerScore = 0
    
    var body: some View {
        ZStack {
            Image(.backgroundPlain)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image(.logo)
                Spacer()
                HStack {
                    Image(playerCard)
                    Image(computerCard)
                }
                Spacer()
                
                Button("Button") {
                    print("Button tapped")
                }
                
                Spacer()
                
                // Scores
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("Computer")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
