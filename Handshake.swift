//
//  Handshake.swift
//  
//
//  Created by Sakshi Jain on 10/12/17.
//

import Foundation

let n = Int(readLine()!)!
var i : Int = 0
for _ in 0..<n{
    var input_n = Int(readLine()!)!
    input_n *= (input_n - 1)
    print(input_n / 2)
}
