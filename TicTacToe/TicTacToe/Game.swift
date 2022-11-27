//
//  Game.swift
//  TicTacToe
//
//  Created by Holly Decardenas on 11/27/22.
//

import Foundation

struct Player{
    var character: String
}

var _player1 = Player(character:"X")
var _player2 = Player(character:"O")
var _currentPlayer = Player(character:"X")

var _fillChar = "X"

func Start(){
    _currentPlayer = _player1
}

func SquareClick(id: Int){
    _fillChar = _currentPlayer.character
    
    if (_currentPlayer.character == _player1.character){
        _currentPlayer = _player2
    }
    else{
        _currentPlayer = _player1
    }
       
}
