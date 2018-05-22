//
//  ElectronicsShop.swift
//  
//
//  Created by Sakshi Jain on 04/05/18.
//

import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    /*
     * Write your code here.
     */
    var sumArray = [Int]()
    
    for i in keyboards.count
    {
        for j in drives.count
        {
            let sum = keyboards[i] + drives[j]
            if sum <= b
            {
                sumArray.append(sum)
            }
        }
    }
    
    print(sumArray)
    
    if sumArray.count == 0
    {
        return -1
    }
    else
    {
        //  print(sumArray.max()!)
    }
    
    return sumArray.max()!
}
