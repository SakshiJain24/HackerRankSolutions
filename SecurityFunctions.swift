//
//  SecurityFunctions.swift
//  
//
//  Created by Sakshi Jain on 19/12/17.
//

import Foundation

var inputArray = (readLine()!.split(separator: " ")).map { Int($0) }

for i in inputArray
{
    print(i!%11)
}


