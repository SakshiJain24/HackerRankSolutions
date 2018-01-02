//
//  SecurityFunctionInverses.swift
//  
//
//  Created by Sakshi Jain on 19/12/17.
//

import Foundation

let input = Int(readLine()!)!
let inputArr : Array = (readLine()!.split(separator: " ")).map { Int($0) }

for i in 0..<input
{
    for j in 0..<input
    {
        if i + 1 == inputArr[j]!
        {
            print(j+1)
        }
    }
}
