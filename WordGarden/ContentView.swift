//
//  ContentView.swift
//  WordGarden
//
//  Created by Student1 on 3/21/25.
//

import SwiftUI

struct ContentView: View {
    @State private var wordGuessed = 0
    @State private var wordsMissed = 0
    @State private var wordsToGuess = ["SWIFT", "DOG", "CAT"] // ALL CAPS
    @State private var gameStatusMessage = "How many Guesses to Uncover the Hidden Word?"
    @State private var currentWord = 0 // index in wordsToGuess
    @State private var guessedLetter = ""
    @State private var imageName = "flower8"
    @State private var playAgainHidden = true
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Words Guessed: \(wordGuessed)")
                    Text("Words Missed: \(wordsMissed)")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Words to Guess : \(wordsToGuess.count - (wordGuessed + wordsMissed))")
                    Text("Words in Game: \(wordsToGuess.count)")
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Text(gameStatusMessage )
                .font(.title)
                .multilineTextAlignment(.center)
                .padding()
            
            //TODO: switch to wordsToGuess[currentWord]
            Text("- - - - -")
                .font(.title)
            
            if playAgainHidden {
                HStack{
                    TextField("", text: $guessedLetter)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: 30)
                        .overlay {
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(.gray, lineWidth: 2)
                        }
                    
                    Button("Guess a Letter.") {
                        //TODO: Guess a Letter button action here
                        playAgainHidden = false
                    }
                    .buttonStyle(.bordered)
                    .tint(.mint)
                }
            }else{
                Button("Another Word?") {
                    //TODO: Another Word Button Action Here
                    playAgainHidden = true
                }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            }
            
            
                Spacer()
                
            Image(imageName)
                .resizable()
                .scaledToFit()
            }
        .ignoresSafeArea(edges: .bottom)
        }
    }
    
    #Preview {
        ContentView()
    }

