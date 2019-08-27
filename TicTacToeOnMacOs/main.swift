//
//  main.swift
//  TicTacToeOnMacOs
//
//  Created by Ani on 8/27/19.
//  Copyright © 2019 Ani. All rights reserved.
//

import Foundation


var square:[Character] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]


var player = 1
var winComb = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

func readUsername() -> String? {
    var input: String?
    repeat {
        print("Input your name 👉: ", terminator: "")
        input = readLine(strippingNewline: true)
    } while input != nil && input!.isEmpty
    
    return input
}

func win()->String{
    
    for i in winComb{
        if(square[i[0]] != "0"  && square[i[0]] == square[i[1]] && square[i[1]] == square[i[2]]){
            if(square[i[01]] == "X"){
                return "1 won"
            }else{
                return "2 won"
            }
        }
    }
    return "no one yet"
}

//let row:Int! = Int(readUsername()!)
//let column:Int! = Int(readUsername()!)

//func board(row: Int, coulumn: Int) -> String{
//    let firstLine = "┏━━━" + String(repeating: "┳━━━", count: column - 1) + "┓"
//    let verticalSpacingLine = String(repeating: "┃   ", count: column) + "┃"
//    let verticalSeparatingLine = "┣━━━" + String(repeating: "╋━━━", count: column - 1) + "┫"
//    let lastLine = "┗━━━" + String(repeating: "┻━━━", count: column - 1) + "┛"
//
//    var lines = [firstLine]
//    for _ in 0..<row - 1 {
//        lines += [verticalSpacingLine, verticalSeparatingLine]
//    }
//    lines += [verticalSpacingLine, lastLine]
//
//    return lines.joined(separator: "\n")

//}

//board(row: row, column: column)


func board(){
        print("\(square[1])" + " | " + "\(square[2])" + " | " + "\(square[3])")
        print("__|___|__")
        print("  |   |  ")
        print("\(square[4])" + " | " + "\(square[5])" + " | " + "\(square[6])")
        print("__|___|__")
        print("  |   |  ")
        print("\(square[7])" + " | " + "\(square[8])" + " | " + "\(square[9])")
    
    
    
}
board()

for i in 0..<9{

    let value:Int! = Int(readUsername()!)
    
    
    if(player == 1 && square[value] != "X" && square[value] != "O"){
        square[value] = "X"
        player = 2
      
    }else if(player == 2 && square[value] != "x" && square[value] != "O" ){
        square[value] = "O"
        player = 1
    }
    let number =  win()
    print("\(number)")

    if(number == "1 won" || number == "2 won" ){
        break
    }
    board()
    
}





