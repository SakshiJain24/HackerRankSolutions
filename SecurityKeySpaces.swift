//
//  SecurityKeySpaces.swift
//  
//
//  Created by Sakshi Jain on 20/12/17.
//

import Foundation

let input = readLine()!
let space = Int(readLine()!)!

var inputArray = Array(input).map { String($0) }

for i in 0..<inputArray.count
{
    var temp = Int (inputArray[i])!
    
    if temp + space > 9
    {
        temp += space
        temp -= 10
    }
    else
    {
        temp += space
    }
    
    inputArray[i] = String(temp)
}

print(inputArray.flatMap({$0}).joined())
