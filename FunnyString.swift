//
//  FunnyString.swift
//  
//
//  Created by Sakshi Jain on 16/05/18.
//

import Foundation

let input = Int(readLine()!)!

for _ in 0..<input
{
    let inputString = readLine()!
    let inputArr1 = Array(inputString).map { String($0) }
    
    let reversedString = String(inputString.reversed())
    let reversedInputArr1 = Array(reversedString).map { String($0) }
    
    var counter = 0
    
    for i in 0..<(inputArr1.count - 1)
    {
        let a : Int = Int(inputArr1[i + 1].utf8CString[0])
        let z : Int = Int(inputArr1[i].utf8CString[0])
        
        let a1 : Int = Int(reversedInputArr1[i + 1].utf8CString[0])
        let z1 : Int = Int(reversedInputArr1[i].utf8CString[0])
        
        if (abs(a - z)) == (abs(a1 - z1))
        {
            counter += 1
        }
    }
    
    if counter == inputArr1.count - 1
    {
        print("Funny")
    }
    else
    {
        print("Not Funny")
    }
}

