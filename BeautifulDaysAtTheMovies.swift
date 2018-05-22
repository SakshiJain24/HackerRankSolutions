//
//  BeautifulDaysAtTheMovies.swift
//  
//
//  Created by Sakshi Jain on 10/05/18.
//

import Foundation

let inputString = readLine()!
var inputArr : [Int] = (inputString.components(separatedBy: " ")).map{ Int ($0)! }

var resultcounter = 0

for i in inputArr[0]...inputArr[1]{
    
    var reverseNumber = 0
    var number = i
    
    while number > 0 {
        let reminder = number % 10
        reverseNumber = reverseNumber * 10 + reminder
        if reverseNumber > Int(Int32.max) {
            number = 0
        }
        number = number / 10
    }
    
    let divideResult : Float =  Float( abs(i - reverseNumber)) / Float( inputArr[2] )   
    let isInteger = floor(divideResult) == divideResult
    
    if isInteger
    {
        resultcounter += 1
    }
}

print(resultcounter)
