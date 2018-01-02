//
//  SecurityInvolution.swift
//  
//
//  Created by Sakshi Jain on 19/12/17.
//

import Foundation

let input = Int(readLine()!)!
let inputArr : Array = (readLine()!.split(separator: " ")).map { Int($0) }

var flag = false

for i in 0..<input
{
    let val = inputArr[i]!
    
    if let val1 = inputArr[val - 1], val1 == i + 1
    {
        flag = true
    }
    else
    {
        break
    }
}

if flag
{
    print("YES")
}
else
{
    print("NO")
}
