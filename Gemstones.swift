//
//  Gemstones.swift
//  
//
//  Created by Sakshi Jain on 16/05/18.
//

import Foundation

let input = Int(readLine()!)!

func gemstones(arr: [String]) -> Int {
    
    let inputArr1 = Array(String(arr[0])).map { String($0) }
    
    let inputArr1 = Array(String(arr[0])).map { String($0) }
    
    var dic : [String:Int] = [:]
    
    for i in 1..<arr.count
    {
        let inputArr2 = Array(String(arr[i])).map { String($0) }
        
        for j in 0..<inputArr1.count
        {
            if inputArr2.contains(inputArr1[j])
            {
                if let val = dic["\(inputArr1[j])"] , val != -1
                {
                    dic["\(inputArr1[j])"] = val + 1
                }
                else if dic["\(inputArr1[j])"] != -1
                {
                    dic["\(inputArr1[j])"] = 1
                }
            }
            else
            {
                dic["\(inputArr1[j])"] = -1
            }
        }
    }
    
    let keyArr = Array(dic.keys)
    var finalCount = 0
    
    for j in keyArr
    {
        if dic[j] != -1
        {
            finalCount += 1
        }
    }
    
    return finalCount
}

