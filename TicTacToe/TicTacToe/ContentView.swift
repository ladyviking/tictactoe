//
//  ContentView.swift
//  TicTacToe
//
//  Created by LadyVikingIT on 11/27/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var empty: String = "   "
    @State private var square1: String = "   "
    @State private var square2: String = "   "
    @State private var square3: String = "   "
    @State private var square4: String = "   "
    @State private var square5: String = "   "
    @State private var square6: String = "   "
    @State private var square7: String = "   "
    @State private var square8: String = "   "
    @State private var square9: String = "   "
    @State private var currentPlayer: String = "X"
    @State private var gameOver: Bool = false
    @State private var winnerText: String = ""
    @State private var gameOverText: String = ""
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Tic Tac Toe!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            HStack {
                Button(action: {
                    if (!gameOver && square1 == empty){
                        square1 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square1).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
                
                Button(action: {
                    if (!gameOver && square2 == empty){
                        square2 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square2).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
                
                Button(action: {
                    if (!gameOver && square3 == empty){
                        square3 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square3).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
            }
            
            HStack {
                Button(action: {
                    if (!gameOver && square4 == empty){
                        square4 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square4).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
                
                Button(action: {
                    if (!gameOver && square5 == empty){
                        square5 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square5).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
                
                Button(action: {
                    if (!gameOver && square6 == empty){
                        square6 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square6).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
            }
            
            HStack {
                Button(action: {
                    if (!gameOver && square7 == empty){
                        square7 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square7).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
                
                Button(action: {
                    if (!gameOver && square8 == empty){
                        square8 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square8).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
                
                Button(action: {
                    if (!gameOver && square9 == empty){
                        square9 = getPlayerCursor()
                        determineWin()
                    }
                }){
                    Text(square9).font(.title).fontWeight(.bold).padding(40)
                }.background(
                    RoundedRectangle(cornerRadius: 10).padding(3).foregroundColor(.white).border(.black)
                )
            }
            
            //Start button (resets game)
            VStack{
                Text("Turn: Player " + currentPlayer).font(.title).fontWeight(.bold).foregroundColor(.black)
                
                Button(action: {
                    square1 = empty
                    square2 = empty
                    square3 = empty
                    square4 = empty
                    square5 = empty
                    square6 = empty
                    square7 = empty
                    square8 = empty
                    square9 = empty
                    gameOver = false
                    winnerText = empty
                    currentPlayer = "X"
                    gameOverText = empty
                    counter = 0
                }){
                    Text("Start").font(.title).fontWeight(.bold).padding(10)
                }.background(
                    Rectangle().padding(1).foregroundColor(.green).border(.black)
                )
                
                Text(winnerText).font(.title2).fontWeight(.bold).foregroundColor(.black)
                
                Text(gameOverText).font(.title2).foregroundColor(.red).fontWeight(.bold)
            }
        }
        .padding()
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
    }
    
    func getPlayerCursor() -> String{
        counter+=1
        if (currentPlayer == "X"){
            currentPlayer = "O"
            return "X"
        }else{
            currentPlayer = "X"
            return "O"
        }
    }

    func determineWin() {
        
        //top row
        if (square1 != empty && square1 == square2 && square1 == square3){
            winnerText = "Winner is Player " + square1
            gameOver = true
            gameOverText = "Game Over!"
        }
            
        //middle row
        if (square4 != empty && square4 == square5 && square4 == square6){
            winnerText = "Winner is Player " + square4
            gameOver = true
            gameOverText = "Game Over!"
        }
           
        //bottom row
        if (square7 != empty && square7 == square8 && square7 == square9){
            winnerText = "Winner is Player " + square7
            gameOver = true
            gameOverText = "Game Over!"
        }
        
        //left column
        if (square1 != empty && square1 == square4 && square1 == square7){
            winnerText = "Winner is Player " + square1
            gameOver = true
            gameOverText = "Game Over!"
        }
        
        //middle column
        if (square2 != empty && square2 == square5 && square2 == square8){
            winnerText = "Winner is Player " + square2
            gameOver = true
            gameOverText = "Game Over!"
        }
        
        //right column
        if (square3 != empty && square3 == square6 && square3 == square9){
            winnerText = "Winner is Player " + square2
            gameOver = true
            gameOverText = "Game Over!"
        }
        
        //top left to bottom right diagnal
        if (square1 != empty && square1 == square5 && square1 == square9){
            winnerText = "Winner is Player " + square1
            gameOver = true
            gameOverText = "Game Over!"
        }
        
        //bottom left to top right diagnal
        if (square7 != empty && square7 == square5 && square7 == square3){
            winnerText = "Winner is Player " + square7
            gameOver = true
            gameOverText = "Game Over!"
        }
        
        //Draw
        if (counter == 9){
            winnerText = "No Winner"
            gameOver = true
            gameOverText = "Game Over!"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




