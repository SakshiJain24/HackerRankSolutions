//
//  SecurityEncryptionScheme.swift
//  
//
//  Created by Sakshi Jain on 20/12/17.
//

import Foundation

var input = Int(readLine()!)!
var finalOutput = 1

while input > 0
{
    finalOutput *= input
    input -= 1
}

print(finalOutput)
