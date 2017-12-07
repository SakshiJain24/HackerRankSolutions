//
//  QueueUsingTwoStacks.swift
//  
//
//  Created by Sakshi Jain on 06/12/17.
//

import Foundation

let n = Int(readLine()!)!
var queueArray = [Int]()

for _ in 1...n
{
    let operation = readLine()!
    let inputArray = operation.split(separator: " ")
    
    switch Int(inputArray[0])!
    {
    case 1:
        if (inputArray.count > 0)
        {
            queueArray.append(Int(inputArray[1])!)
        }
    case 2:
        if (queueArray.count > 0)
        {
            queueArray.remove(at: 0)
        }
    case 3:
        if (queueArray.count > 0)
        {
            print(queueArray[0])
        }
    default:
        break
    }
}
