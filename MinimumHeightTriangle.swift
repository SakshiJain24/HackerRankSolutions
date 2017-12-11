//
//  MinimumHeightTriangle.swift
//  
//
//  Created by Sakshi Jain on 10/12/17.
//

import Foundation

var inputArrCopr = (readLine()!.split(separator: " ")).map { Int($0) }
let height = Double((inputArrCopr[1]! * 2)) / Double(inputArrCopr[0]!)
print(Int(height.rounded(.up)))
