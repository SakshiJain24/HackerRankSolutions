//
//  AngryProfessor.swift
//  
//
//  Created by Sakshi Jain on 09/05/18.
//

import Foundation

let query = Int(readLine()!)!

for _ in 0..<query{
    
    let inputString = readLine()!
    let inputArr : [Int] = (inputString.components(separatedBy: " ")).map{ Int ($0)! }

    let inputString1 = readLine()!
    let inputArr1 : [Int] = (inputString1.components(separatedBy: " ")).map{ Int ($0)! }

    var maxStudents = 0
    
    for i in inputArr1{
        if i <= 0
        {
            maxStudents += 1
        }
    }
    
    if maxStudents >= inputArr[1]
    {
        print("NO")
    }
    else
    {
        print("YES")
    }
}
