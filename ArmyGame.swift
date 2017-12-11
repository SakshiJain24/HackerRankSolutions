//
//  ArmyGame.swift
//  
//
//  Created by Sakshi Jain on 11/12/17.
//

import Foundation

var inputArray = (readLine()!.split(separator: " ")).map { Int($0) }
let n = inputArray[0]!
let m = inputArray[1]!

let output = (n+n%2)*(m+m%2) / 4
print(output)
