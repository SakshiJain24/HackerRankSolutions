//
//  ServiceLane.swift
//  
//
//  Created by Sakshi Jain on 16/05/18.
//

import Foundation

let inputString = readLine()!
let inputString1 = readLine()!
var inputArr : [Int] = (inputString.components(separatedBy: " ")).map{ Int ($0)! }
var inputArr1 : [Int] = (inputString1.components(separatedBy: " ")).map{ Int ($0)! }

for i in 0..<inputArr[1]{
    let inputString2 = readLine()!
    let inputArr2 : [Int] = (inputString2.components(separatedBy: " ")).map{ Int ($0)! }
    let subarray = inputArr1[inputArr2[0]...inputArr2[1]]
    print(subarray.min()!)
}
