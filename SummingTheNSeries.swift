//
//  SummingTheNSeries.swift
//  
//
//  Created by Sakshi Jain on 11/12/17.
//

import Foundation

let n = Int(readLine()!)!

for _ in 1...n
{
    let number = Int(readLine()!)!
    let sum = (number % 1000000007) * (number % 1000000007)
    print(sum % 1000000007)
}
