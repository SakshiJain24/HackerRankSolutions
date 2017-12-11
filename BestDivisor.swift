//
//  BestDivisor.swift
//  
//
//  Created by Sakshi Jain on 11/12/17.
//

import Foundation

let n = Int(readLine()!)!
var max = 0
var divisor = 0

for i in 1...n
{
    if n%i == 0
    {
        var sum = 0
        var temp = i
        // Get Sum of Divisor
        while temp != 0
        {
            let rem = temp%10
            sum += rem
            temp = temp / 10
        }
        
        if (sum > max)
        {
            max = sum
            divisor = i
        }
    }
}

print(divisor)
