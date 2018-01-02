//
//  SecurityPermutations.swift
//  
//
//  Created by Sakshi Jain on 19/12/17.
//

import Foundation

let input = Int(readLine()!)!
let inputArr : Array = (readLine()!.split(separator: " ")).map { Int($0) }

for i in 0..<input
{
    if let val = inputArr[inputArr[i]! - 1]
    {
        print(val)
    }
    else
    {
        print(inputArr[i]!)
    }
}
