//
//  FindDigits.swift
//  
//
//  Created by Sakshi Jain on 08/05/18.
//

import Foundation

let n = Int(readLine()!)!

var i : Int = 0

for _ in 0..<n
{
    let inputString = readLine()!
    let characters = Array(inputString)
    let inputNumber : Int = Int(inputString)!
    
    var finalArray : [Int] = []
    
    for i in 0..<characters.count
    {
        if let number_i = Int(String(characters[i])) {
            
            if (number_i == 0)
            {
                continue
            }
            else if (inputNumber%number_i == 0)
            {
                finalArray.append(number_i)
            }
        }
    }
    print(finalArray.count)
}
