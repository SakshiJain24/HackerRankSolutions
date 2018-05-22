//
//  JumpingOnTheClouds.swift
//  
//
//  Created by Sakshi Jain on 09/05/18.
//

import Foundation

let inputString = readLine()!
var inputArr : [Int] = (inputString.components(separatedBy: " ")).map{ Int ($0)! }

let inputCloud = readLine()!
var cloudArr : [Int] = (inputCloud.components(separatedBy: " ")).map{ Int ($0)! }

var energyLevel = 100

for i in stride(from: 0, to: cloudArr.count, by: inputArr[1]) {
    
    var val = -1
    if (i == cloudArr.count)
    {
        val = cloudArr[0]
    }
    else
    {
        val = cloudArr[i]
    }
    
    if val == 0
    {
        energyLevel -= 1
    }
    else if val == 1
    {
        energyLevel -= 3
    }
}

print(energyLevel)
