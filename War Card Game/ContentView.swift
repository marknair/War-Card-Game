//
//  ContentView.swift
//  War Card Game
//
//  Created by Mark Nair on 2/10/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "back"
    @State private var computerCard = "back"
    @State private var playerScore = 0
    @State private var computerScore = 0
    
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
                
                Button {
                    // Call a function to deal the cards
                    dealCards()
                } label: {
                    Image("button")
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
    
    // MARK: Functions
    
    func dealCards() {
        // 1. Randomize the card values
        let playerValue = Int.random(in: 2...14)
        let computerValue = Int.random(in: 2...14)
        
        // 2. Update card images
        playerCard = "card\(playerValue)"
        computerCard = "card\(computerValue)"
        
        // 3. Calculate the score
        if playerValue > computerValue {
            playerScore += 1
        } else if computerValue > playerValue {
            computerScore += 1
        } else {
            playerScore += 1
            computerScore += 1
        }
    }
}

#Preview {
    ContentView()
}

