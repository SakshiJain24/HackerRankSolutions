//
//  AlternatingCharacters.swift
//  
//
//  Created by Sakshi Jain on 17/05/18.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n
{
    let inputString1 = readLine()!
    var inputArr = Array(inputString1).map { String($0) }
    
    var count = 0
    
    for i in 0..<inputArr.count - 1
    {        
        if inputArr[i] == inputArr[i + 1]
        {
          count += 1
        }
    }
    
    print(count)
}
