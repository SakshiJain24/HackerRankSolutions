//
//  UtopianTree.swift
//  
//
//  Created by Sakshi Jain on 11/05/18.
//

import Foundation

let query = Int(readLine()!)!

for _ in 0..<query
{
    let cycles = Int(readLine()!)!
   
    let springGrowthHeight = 2
    let normalGrowthHeight = 1
    let startHeight = 1
    var finalHeight = startHeight
    
    if (cycles == 0)
    {
        finalHeight = 1
    }
    else
    {
        for i in 1...cycles
        {
            if i%2 == 0
            {
                finalHeight += normalGrowthHeight
            }
            else
            {
                finalHeight *= springGrowthHeight
            }
        }
    }
    
    print(finalHeight)
}
