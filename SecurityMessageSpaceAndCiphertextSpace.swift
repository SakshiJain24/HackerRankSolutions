//
//  SecurityMessageSpaceAndCiphertextSpace.swift
//  
//
//  Created by Sakshi Jain on 20/12/17.
//

import Foundation

let input = readLine()!
var inputArray = Array(input).map { String($0) }

for i in 0..<inputArray.count
{
    var temp = Int (inputArray[i])!
    
    if temp + 1 > 9
    {
        temp = 0
    }
    else
    {
        temp += 1
    }
    
    inputArray[i] = String(temp)
}

print(inputArray.flatMap({$0}).joined())

