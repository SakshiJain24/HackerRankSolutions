//
//  SecurityBijectiveFunctions.swift
//  
//
//  Created by Sakshi Jain on 19/12/17.
//

import Foundation

let input = Int(readLine()!)!
let inputArrCopr : Array = (readLine()!.split(separator: " ")).map { Int($0) }

let uniques = Array(NSOrderedSet(array: inputArrCopr))

if uniques.count == inputArrCopr.count {
    print("YES")
} else {
    print("NO")
}
