//
//  TaumAndBday.swift
//  
//
//  Created by Sakshi Jain on 14/05/18.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n
{
    var inputArray1_n = (readLine()!.split(separator: " ")).map { Int($0) }
    
    let blackValue = inputArray1_n[0]!
    let whiteValue = inputArray1_n[1]!
    
    var inputArray2_n = (readLine()!.split(separator: " ")).map { Int($0) }

    let bc = inputArray2_n[0]!
    let wc = inputArray2_n[1]!
    let z = inputArray2_n[2]!
    
    let cost1 = ((bc * blackValue) + (wc * whiteValue))
    let cost2 = (((blackValue + whiteValue) * bc) + (whiteValue * z))
    let cost3 = (((blackValue + whiteValue) * wc) + (blackValue * z))
    
    let smallest = min(min(cost1, cost2), cost3)
    
    print(smallest)

}
