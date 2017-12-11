//
//  FindThePoint.swift
//  
//
//  Created by Sakshi Jain on 10/12/17.
//

import Foundation
let n = Int(readLine()!)!

var i : Int = 0

for _ in 0..<n
{
    var inputArray1_n = (readLine()!.split(separator: " ")).map { Int($0) }
    
    let point_x = 2 * inputArray1_n[2]! - inputArray1_n[0]!
    let point_y = 2 * inputArray1_n[3]! - inputArray1_n[1]!
    
    print(point_x, terminator:"")
    print(" ", terminator:"")
    print(point_y)
}
