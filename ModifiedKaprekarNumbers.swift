//
//  ModifiedKaprekarNumbers.swift
//  
//
//  Created by Sakshi Jain on 14/05/18.
//

import Foundation

let p = Int(readLine()!)!
let q = Int(readLine()!)!
var responseArray : [Int] = []

for i in p...q{
    if i == 1
    {
        responseArray.append(i)
        continue
    }
    
    let square_i = i * i
    let squareString = String(square_i)

    let array = squareString.compactMap{Int(String($0))}
    
    var num1 : [Int] = []
    var num2 : [Int] = []
    
    let limit = Int(floor(Double(array.count/2)))
    
    for j in 0..<limit{
        num1.append(array[j])
        
        if (limit + j) < array.count
        {
            num2.append(array[limit + j])
        }
    }
    
    if array.count%2 != 0
    {
        num2.append(array[array.count - 1])
    }
    
    if (num1.count > 0 && num1.count > 0)
    {
        let n1 = Int(num1.map { String($0) }.joined(separator: ""))!
        let n2 = Int(num2.map { String($0) }.joined(separator: ""))!
        
        if (n1 + n2) == i{
            responseArray.append(i)
        }
    }
}

if (responseArray.count == 0)
{
    print("INVALID RANGE")
}
else
{
    print(responseArray)
}
