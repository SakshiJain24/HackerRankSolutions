//
//  TheHurdleRace.swift
//  
//
//  Created by Sakshi Jain on 08/05/18.
//

import Foundation

let inputString = readLine()!
let inputString1 = readLine()!

var arr : [Int] = (inputString.components(separatedBy: " ")).map{ Int ($0)! }
var heightArr : [Int] = (inputString1.components(separatedBy: " ")).map{ Int ($0)! }

let MaxHeight = heightArr.max()!

if arr[1] > MaxHeight
{
    print(0)
}
else
{
     print(MaxHeight - arr[1])
}
