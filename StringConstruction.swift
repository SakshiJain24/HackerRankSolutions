//
//  StringConstruction.swift
//  
//
//  Created by Sakshi Jain on 16/05/18.
//

import Foundation

let input = Int(readLine()!)!

for _ in 0..<input
{
    let inputString = readLine()!
    var inputArr1 = Array(inputString).map { String($0) }
    inputArr1 = Array(Set(inputArr1))
    print(inputArr1.count)
}

