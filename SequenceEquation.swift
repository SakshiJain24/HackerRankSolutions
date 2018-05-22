//
//  SequenceEquation.swift
//  
//
//  Created by Sakshi Jain on 11/05/18.
//

import Foundation

let inputString = Int(readLine()!)!

let inputString1 = readLine()!
var inputArr : [Int] = (inputString1.components(separatedBy: " ")).map{ Int ($0)! }

for i in 1...inputString
{
    if let index = inputArr.index(of: i) {
        if let index_y = inputArr.index(of: index+1) {
            print("\(index_y+1)")
        }
    }
}
