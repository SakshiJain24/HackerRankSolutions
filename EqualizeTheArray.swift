//
//  EqualizeTheArray.swift
//  
//
//  Created by Sakshi Jain on 09/05/18.
//

import Foundation

let inputString = readLine()!
let inputString1 = readLine()!
var inputArr : [Int] = (inputString1.components(separatedBy: " ")).map{ Int ($0)! }
var counts: [Int : Int] = [:]

for item in inputArr {
    counts[item] = (counts[item] ?? 0) + 1
}

var countArray = Array(counts.values)
var maxValue = countArray.max()!
if let index = countArray.index(of: maxValue) {
    countArray.remove(at: index)
}

print(countArray.reduce(0, +))
